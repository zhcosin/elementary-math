import math;
import geometry;
import graph;

size(180,180);

pair p=(0.3,1.5);
pair a=(0,1);
pair b=(1,1);
pair c=(1,0);
pair d=(0,0);

draw(a--b--c--d--cycle,black);
draw("$b$",p--a);
draw("$a$",p--b);
draw(p--c);
draw(p--d);

label("$P$",p,N);
label("$A$",a,W);
label("$B$",b,E);
label("$C$",c,E);
label("$D$",d,W);


pair t=intersectionpoint(p--d,a--b);
label("$T$",t,SW);

pair s=intersectionpoint(p--c,a--b);
label("$S$",s,SE);

pair r=(0.3,1);
label("$R$",r,S);
draw(p--r,dashed);

label("$\alpha$",(0.1,1),N);
label("$\beta$",(0.8,1),N);

