autowatch = 1;
inlets = 2;
outlets = 2;
include("chord_progressions.js");
var generatorPage=["patternlabel", "segments", "density", "register", "strum", "velocity", "gate", "octaveslabel", "strumlabel", "velocitylabel", "gatelabel", "segmentscaption", "densitycaption", "registercaption", "rootlabel", "segmentsreadout", "densityreadout", "registerreadout", "motion", "motionlabel", "rootdisplayselect", "octavesselect", "patternselect", "progressionbutton"];
var progressionPage=["browse", "chordcount", "searchplaceholder", "searchinput", "backbutton", "shufflebutton", "tile0", "tile1", "tile2", "tile3", "tile4", "tile5", "tile6", "tile7", "tile8", "tile9"];
var context = {};
var settings = {progressionMode:0, preset:0, motion:0, start:0, rate:1, pattern:0, octaves:3, variation:35, register:4, gate:100, segments:4, density:100, inversion:0, spread:0, strum:0, velocity:20,  direction:0};
var result = new Dict();
var parameterChange = false;
var phraseSeed = 1;
function dictionary(name) {
    if (inlet === 1) context = JSON.parse(new Dict(name).stringify());
    else bang();
}
function rate(v) { parameterChange = true; settings.rate = Math.max(0,Math.min(3,Math.round(v))); }
function pattern(v) { parameterChange = true; settings.pattern = Math.max(0,Math.min(3,Math.round(v))); }
function octaves(v) { parameterChange = true; settings.octaves = Math.max(2,Math.min(6,Math.round(v)+2)); }
function variation(v) { parameterChange = true; settings.variation = Math.max(0,Math.min(100,v)); }
function register(v) { parameterChange = true; settings.register = Math.max(0,Math.min(8,Math.round(v))); }
function gate(v) { parameterChange = true; settings.gate = Math.max(10,Math.min(100,v)); }
function segments(v) { if (!isFinite(v)) return; parameterChange=true; settings.segments=Math.max(1,Math.min(16,Math.round(v))); }
function density(v) { if (!isFinite(v)) return; parameterChange=true; settings.density=Math.max(0,Math.min(100,Math.round(v))); }
function inversion(v) { if (!isFinite(v)) return; parameterChange=true; settings.inversion=Math.max(0,Math.min(5,Math.round(v))); }
function spread(v) { if (!isFinite(v)) return; parameterChange=true; settings.spread=Math.max(0,Math.min(3,Math.round(v))); }
function strum(v) { if (!isFinite(v)) return; parameterChange=true; settings.strum=Math.max(-100,Math.min(100,Math.round(v))); }
function velocity(v) { if (!isFinite(v)) return; parameterChange=true; settings.velocity=Math.max(0,Math.min(100,Math.round(v))); }
function direction(v) { if (!isFinite(v)) return; parameterChange=true; settings.direction=Math.max(0,Math.min(3,Math.round(v))); }
function start(v) { if (!isFinite(v)) return; parameterChange=true; settings.start=Math.max(0,Math.min(11,Math.round(v))); }
function motion(v) { if (!isFinite(v)) return; parameterChange=true; settings.motion=Math.max(0,Math.min(100,v)); }
function preset(v) { if (!isFinite(v)) return; parameterChange=true; settings.progressionMode=1; settings.preset=Math.max(0,Math.min(progressionBank.length-1,Math.round(v))); if(searchMatches) this.patcher.getnamed("browse").message("set",searchMatches.indexOf(settings.preset)); }
var tileChoices=[], searchQuery="", searchMatches=null, visiblePage=0, beforeSearchTiles=null, filterCount=4;
function roman(index) { return progressionBank[index].name.split(' / ')[1].split(' - ')[0]; }
function chordcount(v) {
    if(!isFinite(v)) return;
    var count=Math.max(1,Math.min(32,Math.round(v)));
    if(count===filterCount) return;
    var query=searchQuery;
    filterCount=count; searchMatches=null; searchQuery=''; tileChoices=[];beforeSearchTiles=null;
    search.call(this);
    if(query) search.call(this,query);
}
function matchescount(index) {return roman(index).split(/\s+/).length===filterCount;}
function search() {
    var query=arrayfromargs(arguments).join(' ').replace(/^\s+|\s+$/g,'').replace(/\s+/g,' ').toLowerCase();
    if(query==='bang' || query==='""') query='';
    if(query===searchQuery && searchMatches!==null) {placeholder.call(this);return;}
    if(!searchQuery && query) beforeSearchTiles=tileChoices.slice();
    var restoring=searchQuery && !query && beforeSearchTiles!==null;
    searchQuery=query;
    searchMatches=[];
    var menu=this.patcher.getnamed('browse');menu.message('clear');
    for(var i=0;i<progressionBank.length;i++) if(matchescount(i) && (!searchQuery || (' '+roman(i).toLowerCase()+' ').indexOf(' '+searchQuery+' ')>=0)) searchMatches.push(i);
    if(searchQuery) searchMatches.sort(function(a,b) {
        var aa=roman(a).toLowerCase(),bb=roman(b).toLowerCase();
        return (aa===searchQuery?0:1)-(bb===searchQuery?0:1) || aa.length-bb.length || a-b;
    });
    for(i=0;i<searchMatches.length;i++) menu.message('append',roman(searchMatches[i]));
    if(!searchMatches.length) menu.message('append','No matches');
    menu.message('set',searchMatches.indexOf(settings.preset));
    if(restoring) {tileChoices=beforeSearchTiles;beforeSearchTiles=null;rendertiles.call(this);} else shuffle.call(this, true);
    placeholder.call(this);
}
function placeholder() {
    this.patcher.getnamed('searchplaceholder').message('hidden',!visiblePage || searchQuery ? 1:0);
    if(visiblePage && !searchQuery) this.patcher.message('script','bringtofront','searchplaceholder');
}
function browse(v) {
    var index=Math.round(v);
    if(searchMatches && index>=0 && index<searchMatches.length) this.patcher.getnamed('preset').message('int',searchMatches[index]);
}
function tilevisibility() {
    for(var i=0;i<10;i++) this.patcher.getnamed('tile'+i).message('hidden',!visiblePage || i>=tileChoices.length ? 1:0);
}
function shuffle(ordered) {
    var available=[],seen={};
    var candidates=searchMatches || progressionBank.map(function(e,i){return i;});
    for(var k=0;k<candidates.length;k++) {
        var i=candidates[k], name=roman(i);
        // Long formulas remain available in the top selector; grid buttons fit short formulas.
        if(matchescount(i) && (name.length<=17 || (searchQuery && name.toLowerCase()===searchQuery)) && !seen[name]) { available.push(i);seen[name]=true; }
    }
    if(!ordered) for(i=available.length-1;i>0;i--) { var j=Math.floor(Math.random()*(i+1)),tmp=available[i];available[i]=available[j];available[j]=tmp; }
    tileChoices=available.slice(0,10);
    rendertiles.call(this);
}
function rendertiles() {
    for(var i=0;i<tileChoices.length;i++) {
        var button=this.patcher.getnamed('tile'+i),title=roman(tileChoices[i]);
        button.message('text',title);button.message('texton',title);
        this.patcher.getnamed('tile'+i+'pick').message('set',tileChoices[i]);
    }
    tilevisibility.call(this);
}

function page(v) {
    visiblePage=v?1:0;
    if(v && searchMatches===null) search.call(this);
    if(v && !tileChoices.length) shuffle.call(this);
    for(var i=0;i<generatorPage.length;i++) this.patcher.getnamed(generatorPage[i]).message('hidden',visiblePage);
    for(var j=0;j<progressionPage.length;j++) this.patcher.getnamed(progressionPage[j]).message('hidden',1-visiblePage);
    tilevisibility.call(this);
    placeholder.call(this);
}
function prepared(c,s,intervals,start,end,root,random) {
    var motionState=Math.floor(random()*2147483646)+1;
    function motionRandom() {motionState=motionState*16807%2147483647;return (motionState-1)/2147483646;}
    var entry=progressionBank[s.preset], original=entry.notes, chords=[], source=[], i;
    for(i=0;i<original.length;i++) {
        if(!chords.length || chords[chords.length-1][0][1]!==original[i][1]) chords.push([]);
        chords[chords.length-1].push(original[i]);
    }
    var segmentLength=entry.length/s.segments, noteCount=s.density>0?Math.max(1,Math.round(s.octaves*s.density/100)):0;
    for(var segment=0;segment<s.segments;segment++) {
        var chord=chords[Math.floor(segment*chords.length/s.segments)];
        for(var voice=0;voice<noteCount;voice++) {
            var note=chord[Math.min(chord.length-1,Math.floor(voice*chord.length/noteCount))];
            source.push([note[0]+12*Math.floor(voice/chord.length),segment*segmentLength,segmentLength,note[3]]);
        }
    }
    var firstTime=source.length?source[0][1]:0,bass=127;
    for(i=0;i<source.length && source[i][1]===firstTime;i++) bass=Math.min(bass,source[i][0]);
    var pitches=[], scaleSize=intervals.length;
    for(var oct=-2;oct<12;oct++) for(i=0;i<scaleSize;i++) pitches.push(root+oct*12+intervals[i]);
    function nearest(p) { var best=0;for(var k=1;k<pitches.length;k++) if(Math.abs(pitches[k]-p)<Math.abs(pitches[best]-p)) best=k;return best; }
    var origin=nearest(root+bass), target=(s.register+1)*12+root+intervals[s.start%scaleSize];
    while(target>115)target-=12;
    var targetIndex=nearest(target), result=[];
    for(i=0;i<source.length;i++) {
        var n=source[i], index=nearest(root+n[0])-origin+targetIndex;
        index=Math.max(0,Math.min(pitches.length-1,index));
        var pitch=pitches[index];while(pitch<0)pitch+=12;while(pitch>127)pitch-=12;
        var time=start+n[1]/entry.length*(end-start), duration=n[2]/entry.length*(end-start);
        var groupStart=i, groupEnd=i+1, shortest=duration;
        while(groupStart>0 && source[groupStart-1][1]===n[1]) groupStart--;
        while(groupEnd<source.length && source[groupEnd][1]===n[1]) groupEnd++;
        for(var voice=groupStart;voice<groupEnd;voice++) shortest=Math.min(shortest,source[voice][2]/entry.length*(end-start));
        var voiceIndex=i-groupStart;
        if(voiceIndex>0) {
            if(s.pattern===1 && voiceIndex%2) pitch+=12;
            if(s.pattern===2) pitch=pitches[Math.max(0,Math.min(pitches.length-1,nearest(root+source[groupStart][0])-origin+targetIndex+voiceIndex*3))];
            if(s.pattern===3) pitch=pitches[Math.max(0,Math.min(pitches.length-1,index+2))];
            while(pitch>127)pitch-=12;
            while(pitch<0)pitch+=12;
        }
        var rank=s.strum<0?groupEnd-1-i:i-groupStart;
        var delay=rank*Math.abs(s.strum)/100*Math.min(0.12,shortest/(2*(groupEnd-groupStart)));
        time+=delay;
        var cuts=[0],cell, amount=s.motion/100;
        if(voiceIndex>0 && amount>0) for(cell=1;cell<8;cell++) if(motionRandom()<amount) cuts.push(cell/8);
        cuts.push(1);
        var velocity=Math.max(1,Math.min(127,Math.round(n[3]+(random()-0.5)*80*s.velocity/100)));
        var pool=[],low=nearest(root+source[groupStart][0])-origin+targetIndex;
        for(var pi=Math.max(0,low);pi<=Math.min(pitches.length-1,low+scaleSize*2);pi++) if(pitches[pi]>=0 && pitches[pi]<=127) pool.push(pitches[pi]);
        for(cell=0;cell<cuts.length-1;cell++) {
            var at=time+cuts[cell]*(duration-delay),span=(cuts[cell+1]-cuts[cell])*(duration-delay);
            var melodicPitch=cell>0 && pool.length?pool[Math.floor(motionRandom()*pool.length)]:pitch;
            if(at<end) result.push({pitch:melodicPitch,start_time:at,duration:Math.min(span*s.gate/100,end-at),velocity:velocity});
        }
    }
    return result;
}
function generate(c, s, random) {
    var supplied=s; s={}; for(var key in settings) s[key]=supplied[key]===undefined?settings[key]:supplied[key];
    var clip = c.clip || {}, scale = c.scale || {};
    var start = Number(clip.time_selection_start), end = Number(clip.time_selection_end);
    if (!isFinite(start) || !isFinite(end) || end <= start) {
        start = Number(clip.loop_start); end = Number(clip.loop_end);
    }
    if (!isFinite(start) || !isFinite(end) || end <= start) return [];
    var root = Number(scale.root_note) || 0;
    var intervals = scale.scale_intervals;
    if (!intervals || !intervals.length) return [];
    intervals = intervals.map(Number).filter(function(v){return isFinite(v) && v>=0 && v<12;});
    intervals.sort(function(a,b){return a-b;});
    if (!intervals.length) return [];
    if(s.progressionMode) return prepared(c,s,intervals,start,end,root,random);
    var motionState=Math.floor(random()*2147483646)+1;
    function motionRandom() { motionState=motionState*16807%2147483647; return (motionState-1)/2147483646; }
    var step=(end-start)/s.segments, notes=[], previous=[], phrase=[];
    var n=intervals.length, degree=0, i, j;
    function tone(d) { return (s.register+1)*12+root+intervals[d%n]+12*Math.floor(d/n); }
    // Repeat a four-chord harmonic arc; variation changes harmony without changing rhythm.
    for(i=0;i<s.segments;i++) {
        var choices=i===s.segments-1?[0,Math.max(0,n-3)]:[0,Math.floor(n/2),Math.max(0,n-3),Math.max(0,n-4)];
        var pick=random();
        degree=i===0?0:choices[Math.floor(pick*choices.length)];
        if(random()<s.variation/100) degree=Math.floor(random()*n);
        if(i===0) degree=0;
        phrase.push((degree+s.start)%n);
    }
    for(i=0;start+i*step<end-1e-9;i++) {
        var chord=[], time=start+i*step;
        for(j=0;j<s.octaves;j++) chord.push(tone(phrase[i%s.segments]+j*(s.pattern===2?3:2)+(s.pattern===3?2:0)));
        if(s.pattern===1) for(j=1;j<chord.length;j+=2) chord[j]+=12;
        for(j=0;j<Math.min(s.inversion,chord.length);j++) chord[j]+=12;
        for(j=0;j<chord.length;j++) chord[j]+=12*s.spread*Math.floor(j/2);
        chord.sort(function(a,b){return a-b;});
        if(previous.length) {
            var best=chord.slice(), cost=Infinity;
            for(var shift=-2;shift<=2;shift++) {
                var candidate=chord.map(function(p){return p+shift*12;}), distance=0;
                for(j=0;j<candidate.length;j++) distance+=Math.abs(candidate[j]-previous[j]);
                if(candidate[0]>=0 && candidate[candidate.length-1]<=127 && distance<cost) {best=candidate;cost=distance;}
            }
            chord=best;
        }
        for(j=0;j<chord.length;j++) {
            while(chord[j]>127) chord[j]-=12;
            while(chord[j]<0) chord[j]+=12;
        }
        chord.sort(function(a,b){return a-b;});
        if(i===0) {
            // Start anchors the first bass note even for rootless or inverted voicings.
            var anchor=tone(s.start%n);
            while(anchor>115) anchor-=12;
            chord[0]=anchor;
            for(j=1;j<chord.length;j++) {
                while(chord[j]<anchor) chord[j]+=12;
                while(chord[j]>127) chord[j]-=12;
            }
            chord.sort(function(a,b){return a-b;});
        }
        previous=chord.slice();
        var order=[];
        for(j=0;j<chord.length;j++) order.push(j);
        if(s.direction===1 || (s.direction===2 && i%2)) order.reverse();
        if(s.strum<0) order.reverse();
        if(s.direction===3) for(j=order.length-1;j>0;j--) {var k=Math.floor(random()*(j+1)), tmp=order[j];order[j]=order[k];order[k]=tmp;}
        var selected=[], keepCount=s.density>0?Math.max(1,Math.round(chord.length*s.density/100)):0;
        for(j=0;j<chord.length;j++) selected.push(j);
        for(j=chord.length-1;j>0;j--) {var pickIndex=Math.floor(random()*(j+1)), swap=selected[j];selected[j]=selected[pickIndex];selected[pickIndex]=swap;}
        selected=selected.slice(0,keepCount);
        for(j=0;j<order.length;j++) {
            var keep=selected.indexOf(order[j])>=0, vel=random(), delay=j*Math.abs(s.strum)/100*Math.min(0.12,step/(2*chord.length));
            if(keep) {
                var cuts=[0], amount=s.motion/100, cell;
                // Keep the bass sustained while upper voices form scale-aware melodic fragments.
                if(order[j]!==0 && amount>0) for(cell=1;cell<8;cell++) if(motionRandom()<amount) cuts.push(cell/8);
                cuts.push(1);
                var pool=[];
                for(var pitch=chord[0];pitch<=Math.min(127,chord[0]+24);pitch++) if(intervals.indexOf((pitch-root+120)%12)>=0) pool.push(pitch);
                for(cell=0;cell<cuts.length-1;cell++) {
                    var position=time+delay+cuts[cell]*(step-delay);
                    var length=(cuts[cell+1]-cuts[cell])*(step-delay);
                    var notePitch=chord[order[j]];
                    if(cell>0 && pool.length) notePitch=pool[Math.floor(motionRandom()*pool.length)];
                    notes.push({pitch:notePitch,start_time:position,duration:Math.min(length*s.gate/100,end-position),velocity:Math.max(1,Math.min(127,Math.round(96+(vel-0.5)*80*s.velocity/100+(s.variation/100)*(vel-0.5)*16)))});
                }
            }
        }
    }
    return notes;
}
function requestdone() { parameterChange=false; }
function bang() {
    // Live supplies loop bounds as the time range when there is no time selection.
    if (!parameterChange) {
        if (!visiblePage) settings.progressionMode=0;
        phraseSeed = Math.floor(Math.random()*2147483646)+1;
    }
    parameterChange = false;
    var state = phraseSeed;
    function phraseRandom() { state = state * 16807 % 2147483647; return (state-1)/2147483646; }
    var notes=generate(context,settings,phraseRandom);
    result.parse(JSON.stringify({notes:notes}));
    outlet(0,'dictionary',result.name);
    var scale=context.scale || {};
    var names=['C','C#','D','Eb','E','F','F#','G','Ab','A','Bb','B'];
    outlet(1,'set',names[Number(scale.root_note)||0]);
}
