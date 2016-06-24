
import math;
import geometry;
import graph;

size(200,200);

// defaultpen(linewidth(0.7));

pair o=(0,0);
pair a=(0,2);
pair b=(-1,0);
pair c=(2,0);
pair d=(0,1);

label("$A$",a,N);
label("$B$",b,W);
label("$C$",c,E);
label("$O$",o,S);
label("$D$",d,W);

draw(a--b--c--cycle,black);
draw(a--o);

circle c1=incircle(a,b,c);
draw(c1,green);

pair e=intersectionpoint(c1,b--c);
label("$E$",e,S);

line l1=line(e,d);
pair[] ff=intersectionpoints(c1,l1);
pair f=ff[1];

label("$F$",f,SW);
draw(e--f);
draw(b--f, dashed);
draw(c--f, dashed);

pair i=incenter(a,b,c);
label("$I$",i,SE);

line l2=line(b,i);

pair pp=(2,2);
line l3=line(c,pp);

pair g=intersectionpoint(l2,l3);
label("$G$",g,NE);
draw(b--g);
draw(c--g);
draw(f--g);

line ei=line(e,i);
pair[] ffs=intersectionpoints(c1,ei);
pair k=ffs[1];
label("$K$",k,N);
draw(e--k, red+dashed);
