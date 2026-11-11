from pathlib import Path
import zipfile, json, re

def parse(data):
 assert data[:4]==b'MThd';division=int.from_bytes(data[12:14],'big');assert division<32768
 pos=8+int.from_bytes(data[4:8],'big');notes=[];end=0
 while pos<len(data):
  assert data[pos:pos+4]==b'MTrk';length=int.from_bytes(data[pos+4:pos+8],'big');track=data[pos+8:pos+8+length];pos+=8+length;i=0;tick=0;running=0;active={}
  def vlq():
   nonlocal i
   value=0
   for _ in range(4):
    c=track[i];i+=1;value=(value<<7)|(c&127)
    if c<128:return value
   raise ValueError('Invalid VLQ')
  while i<len(track):
   tick+=vlq();status=track[i]
   if status>=128:i+=1
   else:status=running
   if status==255:
    i+=1;n=vlq();i+=n;continue
   if status in (240,247):n=vlq();i+=n;continue
   running=status;kind=status>>4;channel=status&15;a=track[i];i+=1;b=0
   if kind not in (12,13):b=track[i];i+=1
   key=(channel,a)
   if kind==9 and b>0:active.setdefault(key,[]).append((tick,b))
   elif kind==8 or (kind==9 and b==0):
    if active.get(key):
     start,vel=active[key].pop(0)
     if tick>start:notes.append([a,start/division,(tick-start)/division,vel]);end=max(end,tick/division)
  assert not any(active.values())
 assert notes and end>0
 return sorted(notes,key=lambda n:(n[1],n[0])),end

z=zipfile.ZipFile(Path('progression-sources/free-midi-progressions-20260914.zip'))
bank=[]
for name in sorted(z.namelist()):
 if name.endswith('.mid') and '/C - ' in name and name.count('/')==1:
  notes,end=parse(z.read(name));mode=name.split('/')[0];title=name.split('C - ',1)[1][:-4]
  bank.append({'name':mode+' / '+title,'source':name,'notes':notes,'length':end})
assert len(bank)==195
stats={'files':0,'duplicates':0,'single_chords':0,'added':0}
def signature(notes):
 base=min(n[0] for n in notes if n[1]==notes[0][1]);offset=notes[0][1]
 return tuple((n[0]-base,round(n[1]-offset,6),round(n[2],6)) for n in notes)
seen={signature(e['notes']) for e in bank}
for archive in sorted(Path('progression-sources').glob('*.zip')):
 if archive.name.startswith('free-midi-progressions-'):continue
 pack=zipfile.ZipFile(archive)
 for name in sorted(pack.namelist()):
  if not name.lower().endswith('.mid'):continue
  stats['files']+=1
  notes,end=parse(pack.read(name))
  if len({n[1] for n in notes})<2:stats['single_chords']+=1;continue
  sig=signature(notes)
  if sig in seen:stats['duplicates']+=1;continue
  seen.add(sig)
  base=min(n[0] for n in notes if n[1]==notes[0][1]);offset=notes[0][1]
  normalized=[[n[0]-base+48,n[1]-offset,n[2],n[3]] for n in notes]
  tokens=re.findall(r'(?<![A-Za-z])([b#]?[ivIV]+(?:[0-9]+|sus[24]|add[0-9]+|dim|aug|[\u00b0\u00f8?])?)(?=_| |$)',Path(name).stem)
  if len(tokens)!=len({n[1] for n in notes}):
   degrees=['I','bII','II','bIII','III','IV','bV','V','bVI','VI','bVII','VII'];tokens=[]
   for time in sorted({n[1] for n in notes}):
    chord=min(n[0] for n in notes if n[1]==time);tokens.append(degrees[(chord-base)%12])
  bank.append({'name':'BenLeon / '+' '.join(tokens),'source':archive.name+' / '+name,'notes':normalized,'length':end-offset})
  stats['added']+=1
print(json.dumps(stats), 'total',len(bank))
Path('chord_progressions.js').write_text('var progressionBank = '+json.dumps(bank,separators=(',',':'))+';\n',encoding='utf-8')
Path('chord-progressions-LICENSE.txt').write_bytes(z.read('LICENSE'))
