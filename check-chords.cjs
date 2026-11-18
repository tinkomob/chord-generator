const fs=require('fs'),vm=require('vm'),assert=require('node:assert/strict');
const s={arrayfromargs(args){return Array.from(args);},include(name){vm.runInContext(fs.readFileSync(name,'utf8'),s);},Dict:function(){},outlet(){},Math,JSON};vm.createContext(s);vm.runInContext(fs.readFileSync('chord_generator.js','utf8'),s);
function run(c,o){let seed=123;return s.generate(c,o,()=>((seed=seed*16807%2147483647)-1)/2147483646);}
for(let pattern=0;pattern<4;pattern++)for(const intervals of [[0,2,4,5,7,9,11],[0,1,5,8],[0]]){
 const c={clip:{time_selection_start:3.125,time_selection_end:12.3},scale:{root_note:2,scale_intervals:intervals}},o={rate:1,pattern,octaves:3,register:4,variation:35,gate:75};
 const notes=run(c,o);assert(notes.length>0);
 for(const n of notes){assert(n.pitch>=0&&n.pitch<=127);assert(intervals.includes((n.pitch-2+120)%12));assert(n.start_time>=3.125&&n.duration>0&&n.start_time+n.duration<=12.3+1e-9);}
 const strip=ns=>ns.map(({duration,...n})=>n);assert.deepEqual(strip(notes),strip(run(c,{...o,gate:20})));
 assert.deepEqual(notes.map(n=>n.start_time),run(c,{...o,variation:90}).map(n=>n.start_time));
 const loop=run({...c,clip:{loop_start:8,loop_end:17}},o);assert.equal(loop[0].start_time,8);
 for(const n of run(c,{...o,register:8,octaves:6}))assert(n.pitch<=127&&n.pitch>=0);
}
for(const [root,intervals,expected] of [[0,[0,2,4,5,7,9,11],[60,64,67]],[5,[0,2,4,5,7,9,11],[65,69,72]]]){
 const ns=run({clip:{loop_start:0,loop_end:1},scale:{root_note:root,scale_intervals:intervals}},{segments:1,octaves:3,register:4,variation:0,density:100,motion:0});
 assert.deepEqual(Array.from(ns,n=>n.pitch),expected);
}
console.log('Passed Octave 4 voicings at C4-C5 and F4-F5.');
const p=JSON.parse(fs.readFileSync('Chord Generator.maxpat')).patcher;
for(const {box:b} of p.boxes)if(b.presentation){const [x,y,w,h]=b.presentation_rect;assert(x>=0&&y>=0&&x+w<=152&&y+h<=147);}
const f=fs.readFileSync('Chord Generator.amxd');assert.equal(f.readUInt32LE(28),f.length-32);assert.deepEqual(JSON.parse(f.subarray(32,-1)),{patcher:p});
console.log('Passed chord scales, ranges, loop fallback, pitch bounds, Length/Variation preservation, viewport bounds and container consistency.');
const context={clip:{loop_start:3,loop_end:10.13},scale:{root_note:11,scale_intervals:[0,2,5,7]}};
const options={segments:7,density:100,chance:100,octaves:6,register:8,variation:35,gate:100,strum:100,spread:3,inversion:5,velocity:100};
for(let direction=0;direction<4;direction++){
 const ns=run(context,{...options,direction});assert.equal(ns.length,42);
 for(const n of ns){assert(n.duration>0&&n.start_time+n.duration<=10.13+1e-9);assert(n.velocity>=1&&n.velocity<=127);assert(n.pitch>=0&&n.pitch<=127);}
}
assert.equal(run(context,{...options,density:0}).length,0);
for(const [density,count] of [[25,2],[50,3],[75,5],[100,6]]){
 const ns=run(context,{...options,density,strum:0,motion:0});
 const perChord={};for(const n of ns)perChord[n.start_time]=(perChord[n.start_time]||0)+1;
 assert.equal(Object.keys(perChord).length,7);for(const total of Object.values(perChord))assert.equal(total,count);
}
assert.equal(new Set(run(context,{...options,strum:0}).map(n=>n.start_time)).size,7);
console.log('Passed segments, density endpoints, strum directions, extreme voicings and velocity bounds.');
// Dial faces, readouts and secondary controls must occupy separate rows.
const ui=Object.fromEntries(p.boxes.map(({box})=>[box.id,box]));
for(const name of ['segments','density','register']){
 const dial=ui[name],readout=ui[name+'readout'];
 assert.equal(dial.shownumber,0);
 assert(dial.activedialcolor[0]>dial.activefgdialcolor[0]);
 assert(dial.presentation_rect[1]+dial.presentation_rect[3]<=readout.presentation_rect[1]);
 assert(readout.presentation_rect[1]+readout.presentation_rect[3]<=ui.strum.presentation_rect[1]);
 assert(p.lines.some(({patchline:l})=>l.source[0]===name&&l.destination[0]===name+'readoutset'));
}
console.log('Passed dial fill colors, readout wiring and row separation.');
for(const name of ['segments','density','register']){
 const d=ui[name].presentation_rect,r=ui[name+'readout'].presentation_rect;
 assert.equal(ui[name].appearance,3);assert(Math.abs(d[0]+d[2]/2-r[0]-r[2]/2)<=2);
 assert.equal(ui[name+'readout'].maxclass,'comment');
}
for(const {box:b} of p.boxes)if(b.presentation)assert.deepEqual(b.patching_rect.slice(2),b.presentation_rect.slice(2));
console.log('Passed large native dials, aligned readouts and consistent native UI dimensions.');

assert.equal(ui.rootdisplay.maxclass,'live.menu');assert.equal(ui.octaves.maxclass,'live.menu');
s.octaves(0);assert.equal(s.settings.octaves,2);s.octaves(4);assert.equal(s.settings.octaves,6);s.octaves(1);s.start(0);
const base=run(context,{...options,variation:0,start:0}), shifted=run(context,{...options,variation:0,start:1});
assert.notDeepEqual(base.map(n=>n.pitch),shifted.map(n=>n.pitch));
console.log('Passed Start degree and Size selector mapping.');
assert.equal(ui.gate.saved_attribute_attributes.valueof.parameter_initial[0],100);
assert.equal(ui.pattern.saved_attribute_attributes.valueof.parameter_enum[0],'Root');
s.strum(-100);assert.equal(s.settings.strum,-100);s.strum(0);
const strumOptions={segments:1,octaves:3,register:4,pattern:0,variation:0,spread:0,inversion:0,density:100,chance:100,direction:0,gate:100};
const up=run(context,{...strumOptions,strum:100}),down=run(context,{...strumOptions,strum:-100});
assert.deepEqual(up.map(n=>n.start_time),down.map(n=>n.start_time));assert.deepEqual(up.map(n=>n.pitch),down.map(n=>n.pitch).reverse());
for(const n of down)assert(n.start_time>=3&&n.duration>0&&n.start_time+n.duration<=10.13+1e-9);
assert.equal(ui.density.presentation_rect[1],ui.segments.presentation_rect[1]);
console.log('Passed defaults, signed strum order/bounds and dial baseline alignment.');
for(const intervals of [[0,2,4,5,7,9,11],[0,1,5,8]])for(let root=0;root<12;root++)for(let start=0;start<intervals.length;start++)for(let pattern=0;pattern<4;pattern++){
 const c={clip:{loop_start:3,loop_end:7},scale:{root_note:root,scale_intervals:intervals}};
 const ns=run(c,{...strumOptions,register:8,pattern,start,variation:100,density:1,strum:-100});
 assert(ns.length>0);assert.equal(Math.min(...ns.map(n=>n.pitch))%12,(root+intervals[start])%12);
}
console.log('Passed first chord Start bass across roots, custom scales, voicings, variation and thinning.');
const mc={clip:{loop_start:3.125,loop_end:7.3},scale:{root_note:2,scale_intervals:[0,1,5,7,9]}};
const mo={...strumOptions,segments:1,start:0,octaves:3,gate:100,strum:0};
assert.equal(run(mc,{...mo,motion:0}).length,3);
const moving=run(mc,{...mo,motion:100});assert.equal(moving.length,17);assert.equal(moving[0].pitch%12,2);assert.equal(moving[0].duration,7.3-3.125);
for(const n of moving){assert(mc.scale.scale_intervals.includes((n.pitch-2+120)%12));assert(n.duration>0&&n.start_time>=3.125&&n.start_time+n.duration<=7.3+1e-9);}
assert.deepEqual(moving,run(mc,{...mo,motion:100}));
assert.deepEqual(moving.map(({duration,...n})=>n),run(mc,{...mo,motion:100,gate:25}).map(({duration,...n})=>n));
s.motion(-1);assert.equal(s.settings.motion,0);s.motion(101);assert.equal(s.settings.motion,100);s.motion(0);
console.log('Passed Motion zero/full, sustained Start bass, custom scale fragments, repeatability, Length preservation.');
for(const key of ['start','size','voice']){
 let rect=key==='voice'?[105,132,44,13]:[30,3,42,14],selected=[];
 const u={jsarguments:['chord_select.js',key,0],mgraphics:{init(){},redraw(){}},box:{getattr(){return rect.slice();},message(_, ...r){rect=r;},varname:'test'},patcher:{message(){}},outlet(_,v){selected.push(v);}};
 vm.createContext(u);vm.runInContext(fs.readFileSync('chord_select.js','utf8'),u);
 const initial=rect.slice();u.onclick(2,2);assert(u.opened);u.onclick(2,u.headerY+2);assert(!u.opened);assert.deepEqual(rect,initial);
 u.onclick(2,2);u.onclick(2,(u.above?0:u.height)+u.row+1);assert.equal(selected[0],1);assert(!u.opened);
}
console.log('Passed selector open/close toggle and item selection for all three menus.');

assert(!ui.chance);assert.equal(ui.motion.presentation_rect[1],ui.strum.presentation_rect[1]);
assert.equal(ui.patternselect.presentation_rect[1],ui.velocity.presentation_rect[1]);
assert(s.progressionBank.length>195);
assert.equal(ui.preset.saved_attribute_attributes.valueof.parameter_enum.length,s.progressionBank.length);
for(let preset=0;preset<195;preset++)for(const intervals of [[0,2,4,5,7,9,11],[0,1,5,8]]){
 const c={clip:{time_selection_start:3.125,time_selection_end:12.3},scale:{root_note:2,scale_intervals:intervals}};
 for(const start of [0,1]){
  const ns=run(c,{progressionMode:1,preset,start,gate:100,register:4});assert(ns.length>0);
  for(const n of ns){assert(n.pitch>=0&&n.pitch<=127);assert(intervals.includes((n.pitch-2+120)%12));assert(n.duration>0&&n.start_time>=3.125&&n.start_time+n.duration<=12.3+1e-8);}
  const first=Math.min(...ns.map(n=>n.start_time)),bass=Math.min(...ns.filter(n=>n.start_time===first).map(n=>n.pitch));assert.equal(bass%12,(2+intervals[start])%12);
 }
}
const changed=[];s.patcher={message(){},getnamed(name){return {message(_,v){changed.push([name,v]);}}}};s.settings.progressionMode=0;s.page(1);assert.equal(s.settings.progressionMode,0);assert(changed.some(([n,v])=>n==='browse'&&v===0));s.page(0);assert.equal(s.settings.progressionMode,0);
console.log('Passed all 195 imported progressions, custom scales, Start bass, range bounds and page visibility.');
const progressionOptions={progressionMode:1,preset:12,segments:3,octaves:4,density:100,register:4,start:0,variation:0,motion:0,strum:0,velocity:0,gate:100};
function perSegment(notes){const counts={};for(const n of notes)counts[n.start_time]=(counts[n.start_time]||0)+1;return Object.values(counts);}
assert.equal(perSegment(run(context,progressionOptions)).length,3);
assert.equal(perSegment(run(context,{...progressionOptions,segments:7})).length,7);
assert(perSegment(run(context,progressionOptions)).every(n=>n===4));
assert(perSegment(run(context,{...progressionOptions,octaves:2})).every(n=>n===2));
assert(perSegment(run(context,{...progressionOptions,density:50})).every(n=>n===2));
assert.equal(run(context,{...progressionOptions,density:0}).length,0);
console.log('Passed Segments, Size and Density changing the selected progression while retaining its preset.');
const previousPreset=s.settings.preset;s.shuffle();const firstBatch=Array.from(s.tileChoices);
assert.equal(firstBatch.length,10);assert.equal(new Set(firstBatch).size,10);
for(const i of firstBatch){assert(i>=0&&i<s.progressionBank.length);assert(s.roman(i).length<=17);assert(!/Major|Minor|Modal| - /.test(s.roman(i)));}
s.shuffle();assert.notDeepEqual(Array.from(s.tileChoices),firstBatch);assert.equal(s.settings.preset,previousPreset);
assert.equal(ui.progressionbutton.maxclass,'jsui');assert.equal(ui.progressionbutton.jsarguments[0],'Progressions');assert(!ui.presethelp&&!ui.presettitle);
assert(ui.shufflebutton.presentation_rect[0]>ui.preset.presentation_rect[0]);
console.log('Passed 10 unique roman-only choices, random refresh without changing selected preset and native button layout.');
for(const caption of ['Progressions','Back','dice']){
 const calls=[];const ctx={jsarguments:['chord_action.js',caption],box:{getattr(){return [0,0,70,17];}},outlet(...args){calls.push(args);},mgraphics:new Proxy({text_measure(){return [40,9];}},{get(target,k){return target[k]||function(){};}})};
 vm.createContext(ctx);vm.runInContext(fs.readFileSync('chord_action.js','utf8'),ctx);ctx.paint();ctx.onclick();assert.equal(calls.length,1);assert.equal(calls[0][1],'bang');
}
console.log('Passed rectangular action buttons and background-free dice rendering self-check.');
s.preset(12);s.parameterChange=false;const seedBefore=s.phraseSeed;
const beforeBack=run(context,{...s.settings});
s.page(0);assert.equal(s.settings.progressionMode,1);assert.equal(s.settings.preset,12);assert.equal(s.parameterChange,false);assert.equal(s.phraseSeed,seedBefore);
assert.deepEqual(run(context,{...s.settings}),beforeBack);
s.page(1);assert.equal(s.settings.progressionMode,1);
for(const name of ['backbuttonmsg','progressionbuttonmsg']){
 const paths=p.lines.filter(({patchline:l})=>l.source[0]===name);
 assert.equal(paths.length,1);assert.equal(paths[0].patchline.destination[0],'gen');
}
console.log('Passed Back preserving preset, notes and seed; page navigation bypasses Live generation requests.');
for(let preset=0;preset<195;preset++){
 const options={progressionMode:1,preset,register:4,start:0,strum:0,gate:100};
 const plain=run(context,options),up=run(context,{...options,strum:100}),down=run(context,{...options,strum:-100});
 assert.deepEqual(plain.map(n=>n.pitch),up.map(n=>n.pitch));assert.deepEqual(plain.map(n=>n.pitch),down.map(n=>n.pitch));
 assert.equal(up[0].start_time,plain[0].start_time);assert(down[0].start_time>plain[0].start_time);
 for(const ns of [up,down])for(const n of ns)assert(n.duration>0&&n.start_time>=3&&n.start_time+n.duration<=10.13+1e-9);
 assert.deepEqual(up.map(({duration,...n})=>n),run(context,{...options,strum:100,gate:25}).map(({duration,...n})=>n));
}
console.log('Passed signed Strum on all 195 presets, unchanged pitches/count, timing bounds and Length preservation.');
for(let preset=0;preset<195;preset++){
 const o={progressionMode:1,preset,start:0,register:4,pattern:0,gate:100,motion:0,strum:0,velocity:0};
 const original=run(context,o),moving=run(context,{...o,motion:100});assert(moving.length>original.length);
 const pitches=ns=>ns.map(n=>n.pitch),positions=ns=>ns.map(n=>n.start_time),strip=ns=>ns.map(({duration,...n})=>n);
 assert.deepEqual(strip(moving),strip(run(context,{...o,motion:100,gate:25})));
 const loud=run(context,{...o,velocity:100});assert.deepEqual(pitches(loud),pitches(original));assert.deepEqual(positions(loud),positions(original));assert.notDeepEqual(loud.map(n=>n.velocity),original.map(n=>n.velocity));
 for(let pattern=0;pattern<4;pattern++){
  const ns=run(context,{...o,pattern,motion:100,strum:-100,velocity:100});
  for(const n of ns){assert(n.pitch>=0&&n.pitch<=127);assert(context.scale.scale_intervals.includes((n.pitch-11+120)%12));assert(n.duration>0&&n.start_time>=3&&n.start_time+n.duration<=10.13+1e-9);assert(n.velocity>=1&&n.velocity<=127);}
 }
 assert.notDeepEqual(pitches(original),pitches(run(context,{...o,pattern:1})));
}
console.log('Passed preset Motion, Velo, all Voice modes and combined signed Strum/Length on 195 progressions.');

for(let preset=195;preset<s.progressionBank.length;preset++){
 const c={clip:{loop_start:3.125,loop_end:11.3},scale:{root_note:2,scale_intervals:[0,1,5,8]}};
 const ns=run(c,{progressionMode:1,preset,start:1,register:4,pattern:0,gate:100,motion:0,strum:0,velocity:0});
 assert(ns.length>0);
 for(const n of ns){assert(n.pitch>=0&&n.pitch<=127);assert(c.scale.scale_intervals.includes((n.pitch-2+120)%12));assert(n.duration>0&&n.start_time>=3.125&&n.start_time+n.duration<=11.3+1e-8);}
 const onset=Math.min(...ns.map(n=>n.start_time));assert.equal(Math.min(...ns.filter(n=>n.start_time===onset).map(n=>n.pitch))%12,3);
}
console.log('Passed every added BenLeon preset: custom scale, Start bass, MIDI bounds and offset range.');
const events=[];s.patcher={message(){},getnamed(name){return {message(...args){events.push([name,...args]);if(name==='preset'&&args[0]==='int')s.preset(args[1]);}}}};
s.searchMatches=null;s.search();assert.equal(s.searchMatches.length,s.progressionBank.filter((e,i)=>s.matchescount(i)).length);assert.equal(events.filter(e=>e[0]==='browse'&&e[1]==='append').length,s.progressionBank.filter((e,i)=>s.matchescount(i)).length);
const selectedBefore=s.settings.preset;s.search('I V vi IV');assert(s.searchMatches.length>0&&s.searchMatches.length<s.progressionBank.length);assert.equal(s.settings.preset,selectedBefore);
for(const i of s.searchMatches)assert(s.roman(i).toLowerCase().includes('i v vi iv'));
const expected=s.searchMatches[0];s.browse(0);assert.equal(s.settings.preset,expected);
s.search('nothing-matches-this');assert.equal(s.searchMatches.length,0);assert.equal(s.tileChoices.length,0);s.browse(0);assert.equal(s.settings.preset,expected);
s.search('');assert.equal(s.searchMatches.length,s.progressionBank.filter((e,i)=>s.matchescount(i)).length);const lastMatch=s.searchMatches[s.searchMatches.length-1];s.browse(s.searchMatches.length-1);assert.equal(s.settings.preset,lastMatch);
console.log('Passed full library availability, search filtering/reset/no matches and filtered-to-original preset mapping.');

s.search('');const initialTiles=Array.from(s.tileChoices);s.search('I');s.search('I V');s.search('I V vi');s.search('');assert.deepEqual(Array.from(s.tileChoices),initialTiles);
s.visiblePage=1;events.length=0;s.search('ii V');assert(events.some(e=>e[0]==='searchplaceholder'&&e[1]==='hidden'&&e[2]===1));s.search('');assert(events.some(e=>e[0]==='searchplaceholder'&&e[1]==='hidden'&&e[2]===0));
assert(!ui.searchlabel);assert.equal(ui.searchplaceholder.ignoreclick,1);assert(p.lines.some(({patchline:l})=>l.source[0]==='searchinput'&&l.source[1]===1&&l.destination[0]==='searchdefer'));
console.log('Passed search-as-you-type wiring, placeholder visibility and exact pre-search tile restoration.');

s.search('');const restored=Array.from(s.tileChoices);s.search('I V vi');s.search('bang');assert.equal(s.searchQuery,'');assert.deepEqual(Array.from(s.tileChoices),restored);assert.equal(s.searchMatches.length,s.progressionBank.filter((e,i)=>s.matchescount(i)).length);
s.search('I V');s.search('""');assert.equal(s.searchQuery,'');assert.deepEqual(Array.from(s.tileChoices),restored);
console.log('Passed Max empty text bang/empty-symbol reset and exact original set restoration.');
const exactThree=s.roman(s.progressionBank.findIndex((p,i)=>s.roman(i).split(/\s+/).length===3 && s.roman(i).length<=17));
s.chordcount(3);s.search('');s.search(exactThree);assert.equal(s.roman(s.tileChoices[0]).toLowerCase(),exactThree.toLowerCase());
for(const i of s.searchMatches)assert((' '+s.roman(i).toLowerCase()+' ').includes(' '+exactThree.toLowerCase()+' '));
const exactIndex=s.tileChoices[0];const pos=s.searchMatches.indexOf(exactIndex);s.browse(pos);assert.equal(s.settings.preset,exactIndex);
assert.equal(s.settings.progressionMode,1);
s.search(exactThree);assert.equal(s.tileChoices[0],exactIndex);
console.log('Passed whole-degree search, exact match first, stable result tiles and applying exact search result.');
for(const [name,value] of [['start',0],['octaves',1],['segments',4],['density',100],['register',4]]){
 s.preset(12);s.page(0);s[name](value);assert.equal(s.settings.progressionMode,1,name+' must keep the selected progression');
}
for(const [name,value] of [['strum',30],['motion',30],['velocity',50],['pattern',1],['gate',80]]){
 s.preset(12);s.page(0);s[name](value);assert.equal(s.settings.progressionMode,1,name+' must still edit the selected progression');
}
s.result={parse(){}};s.context=context;
s.preset(12);s.page(0);s.parameterChange=false;s.bang();assert.equal(s.settings.progressionMode,0);
s.preset(12);s.page(1);s.parameterChange=false;s.bang();assert.equal(s.settings.progressionMode,1);
console.log('Passed generator controls and Generate resetting preset mode on main page, modifier edits retaining it, and Back remaining non-generative.');
s.preset(12);s.page(0);s.parameterChange=false;s.bang();assert.equal(s.settings.progressionMode,0);
for(const [name,value] of [['start',1],['octaves',2],['segments',6],['density',75],['register',3],['strum',30],['motion',30],['velocity',50],['pattern',1],['gate',80]]){
 s[name](value);assert.equal(s.settings.progressionMode,0,name+' must keep first-time generation in random mode');
}
console.log('Passed parameter edits keep random mode before a progression is selected.');
s.preset(12);s.page(0);s.strum(50);assert(s.parameterChange);s.requestdone();s.bang();assert.equal(s.settings.progressionMode,0);
console.log('Passed manual Generate after an unapplied Auto-off modifier edit.');
s.search('');const filterPreset=s.settings.preset,filterSeed=s.phraseSeed;s.parameterChange=false;
for(const count of [3,4,6,8]){
 s.chordcount(count);s.search('');
 const expected=s.progressionBank.map((e,i)=>i).filter(i=>s.roman(i).split(/\s+/).length===count);
 assert.deepEqual(Array.from(s.searchMatches),Array.from(expected));
 for(const i of s.tileChoices)assert.equal(s.roman(i).split(/\s+/).length,count);
 const initial=Array.from(s.tileChoices);s.search('I V');s.search('');assert.deepEqual(Array.from(s.tileChoices),initial);
}
assert.equal(s.settings.preset,filterPreset);assert.equal(s.phraseSeed,filterSeed);assert.equal(s.parameterChange,false);
assert.equal(ui.chordcount.saved_attribute_attributes.valueof.parameter_initial[0],4);
assert(ui.browse.presentation_rect[0]+ui.browse.presentation_rect[2]<=ui.chordcount.presentation_rect[0]);
assert(ui.chordcount.presentation_rect[0]+ui.chordcount.presentation_rect[2]<=ui.shufflebutton.presentation_rect[0]);
console.log('Passed exact chord counts 3/4/6/8 across selector, search and tiles; search reset, no generation side effects and header spacing.');


for(const p of s.progressionBank.slice(195))assert.equal(p.name.split(' / ')[1].split(/\s+/).length,new Set(p.notes.map(n=>n[1])).size,p.source);
console.log('Passed imported label counts matching actual chord onsets.');


const voiceUI={jsarguments:['chord_select.js','voice',0],mgraphics:{init(){},redraw(){}},box:{getattr(){return this.rect.slice();},rect:[115,115,34,13],message(_, ...r){this.rect=r;},varname:'patternselect'},patcher:{message(){}},outlet(){}};
vm.createContext(voiceUI);vm.runInContext(fs.readFileSync('chord_select.js','utf8'),voiceUI);
voiceUI.onclick(2,2);assert.deepEqual(voiceUI.box.rect,[101,59,48,69]);
voiceUI.close();assert.deepEqual(voiceUI.box.rect,[115,115,34,13]);assert.equal(voiceUI.width,34);
console.log('Passed expanded Voice width, viewport bounds and closed field restoration.');

for(const key of ['start','size','voice']){
 let rect=key==='voice'?[115,115,34,13]:[30,3,42,14],emitted=[];
 const u={jsarguments:['chord_select.js',key,0],mgraphics:{init(){},redraw(){}},box:{getattr(){return rect.slice();},message(_, ...r){rect=r;},varname:key},patcher:{message(){}},outlet(_,v){emitted.push(v);}};
 vm.createContext(u);vm.runInContext(fs.readFileSync('chord_select.js','utf8'),u);
 const home=rect.slice();u.onclick(2,2);
 const y=(u.above?0:u.height)+u.row+1;
 u.onidle(2,y);assert.equal(u.hovered,1);assert.equal(u.value,0);assert.equal(emitted.length,0);
 u.onidleout();assert.equal(u.hovered,-1);assert(u.opened);
 u.onidle(2,y);u.onblur();assert(!u.opened);assert.equal(u.hovered,-1);assert.deepEqual(rect,home);assert.equal(emitted.length,0);
 u.onclick(2,2);u.onidle(2,y);u.onclick(2,y);assert.deepEqual(emitted,[1]);assert(!u.opened);
 u.onclick(2,2);u.onclick(-1,y);assert.deepEqual(emitted,[1]);assert(!u.opened);
}
console.log('Passed hover, pointer exit, blur dismissal without selection, reopen and selection on all selectors.');
