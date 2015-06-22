// Java script

var w=window; var d=document;
var nav=navigator.appName.indexOf("Microsoft");
var referrer=top.document.referrer
var D=new Date(); 
var Exp=new Date(); Ta=(D.getYear()<1900)?1903:3; Exp.setYear(D.getYear()+Ta);
function STBinit() {
STBs=new String(); STBs=cookie("PopupMin");
Ta=new Array(); if(STBs!=null){Ta=STBs.split("&");}
STBa=new Array(); 
for(x in Ta){ Tb=new Array();Tb=Ta[x].split(":");STBa[Tb[0]]=Tb[1];}
}
function SetC(n){ if(typeof(STBa)!="object") STBinit(); d.write((STBa[n]==1)?"<tr id=\""+n+"\" style=\"display:none\">":"<tr id=\""+n+"\">"); }
function STB(n){STBs=new String();STBa[n]=(STBa[n]==1)?0:1;
Exp=new Date(); Ta=1; Ta+=(D.getYear()<1900)?1900:0; Exp.setYear(D.getYear()+Ta);
for(id in STBa){STBs+=(STBa[id]==1)?"&"+id+":1":"";}
d.cookie="PopupMin="+escape(STBs.substr(1))+"; expires="+Exp.toGMTString();
if(nav>=0){Ta=eval(n).style.display;
 switch(Ta) {
  case "block": eval(n).style.display = "none"; break;
  case "": eval(n).style.display = "none"; break;
  default : eval(n).style.display = "block"; }}
else{d.location.reload();}
}
function cookie(n){Ta=d.cookie.indexOf(n+"=");Tb=Ta+n.length+1;
if((Ta==-1)||((!Ta)&& (n != d.cookie.substring(0,n.length)))) return null;
Tc=d.cookie.indexOf(";",Tb);if(Tc==-1)Tc=d.cookie.length;
return unescape(d.cookie.substring(Tb,Tc));}
function cookie_s(n,v,e,r){ 
d.cookie=escape(n)+"="+escape(v)+"; expires="+e.toGMTString(); if(r)d.location.reload(); }