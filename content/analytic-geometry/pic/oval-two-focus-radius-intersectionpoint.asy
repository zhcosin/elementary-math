
import graph;
import geometry;

size(200,200);

//xaxis("$x$", -8, 8, Arrow);
//yaxis("$x$", -4, 4, Arrow);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

path theellipse = ellipse((0,0), a, b);
draw(theellipse);

pair F1 = (-1*c, 0);
pair F2 = (c, 0);
label("$F_1$", F1, S);
label("$F_2$", F2, S);

real theta = 2*pi/3;
pair A=(a*cos(theta), b*sin(theta));
label("$A$", A, NW);

draw(A -- F1);
draw(A -- F2);

pair F1A = (A.x - F1.x, A.y - F1.y);
line F2Bline = parallel(F2, F1A);

point[] BB = intersectionpoints(F2Bline, theellipse);
point B = BB[0];
draw(B -- F2);
label("$B$", B, NE);

draw(B -- F1);

pair P = intersectionpoint(A -- F2, B -- F1);
label("$P$", P, S);

ellipse re = ellipse(F1, F2, P);
draw(re, dashed+red);

