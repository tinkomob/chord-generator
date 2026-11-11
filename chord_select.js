autowatch=1;
inlets=1;
outlets=1;
mgraphics.init();
mgraphics.relative_coords=0;
mgraphics.autofill=0;
var key=jsarguments[1], value=Number(jsarguments[2])||0, opened=false;
var labels=key==='start'?['Root','II','III','IV','V','VI','VII','VIII','IX','X','XI','XII']:key==='size'?['2 Notes','3 Notes','4 Notes','5 Notes','6 Notes']:['Root','Spread','Quartal','Rootless'];
var home=box.getattr("presentation_rect"), width=home[2], height=home[3];
var row=key==='start'?10:14, above=key==='voice', headerY=0, hovered=-1;
function set(v){value=Math.max(0,Math.min(labels.length-1,Math.round(v)));mgraphics.redraw();}
function msg_int(v){set(v);}
function close(){opened=false;hovered=-1;headerY=0;width=home[2];box.message("presentation_rect",home[0],home[1],home[2],home[3]);mgraphics.redraw();}
function onblur(){if(opened)close();}
function optionat(x,y){
 if(!opened || x<0 || x>=width || (y>=headerY && y<headerY+height))return -1;
 var index=Math.floor((y-(above?0:height))/row);
 return index>=0 && index<labels.length?index:-1;
}
function onidle(x,y){
 var index=optionat(x,y);
 if(index!==hovered){hovered=index;mgraphics.redraw();}
}
function onidleout(){if(hovered!==-1){hovered=-1;mgraphics.redraw();}}
function onclick(x,y){
 if(!opened){
  home=box.getattr("presentation_rect");width=home[2];height=home[3];
  opened=true;headerY=above?labels.length*row:0;
  if(key==='voice')width=Math.max(width,48);
  box.message("presentation_rect",home[0]+home[2]-width,home[1]-headerY,width,home[3]+labels.length*row);
  this.patcher.message('script','bringtofront',box.varname);
 }else if(y>=headerY && y<headerY+height){close();return;}
 else {
  var index=optionat(x,y);
  if(index>=0){set(index);outlet(0,index);}
  close();return;
 }
 mgraphics.redraw();
}
function paint(){
 var g=mgraphics;
 g.set_source_rgba(0.105,0.108,0.112,1);g.rectangle(0,0,width,opened?height+labels.length*row:height);g.fill();
 g.select_font_face('Arial');g.set_font_size(9);
 g.set_source_rgba(0.76,0.61,1,1);g.move_to(2,headerY+height-3);g.show_text(labels[value]);
 g.move_to(width-8,headerY+height/2-1);g.line_to(width-2,headerY+height/2-1);g.line_to(width-5,headerY+height/2+3);g.close_path();g.fill();
 if(opened)for(var i=0;i<labels.length;i++){
  var y=(above?0:height)+i*row;
  if(i===value){g.set_source_rgba(0.29,0.24,0.38,1);g.rectangle(0,y,width,row);g.fill();}
  if(i===hovered){g.set_source_rgba(0.42,0.34,0.54,1);g.rectangle(0,y,width,row);g.fill();}
  g.set_source_rgba(0.85,0.78,0.98,1);g.move_to(2,y+row-2);g.show_text(labels[i]);
 }
}
