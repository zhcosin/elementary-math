
import graph;
import geometry;
import contour;

size(200);

xaxis("$x$", -6,6, Arrow);
yaxis("$y$", -4,4, Arrow);

real a = 5;
real b = 3;
real c = 4;

pair F1 = (-1*c, 0);
label("$F_1$", F1, S);
pair F2 = (c, 0);
label("$F_2$", F2, S);

pair O = (0,0);
label("$O$", O, S);
path myellipse = ellipse(O, a, b);
draw(myellipse);

real theta = pi / 4;
pair P = (a*cos(theta), b*sin(theta));
label("$P$", P, NE);
draw(O -- P);

real tangentline(pair t) {
  real x = t.x;
  real y = t.y;
  return P.x*x/(a*a)+P.y*y/(b*b)-1;
}

guide[][] g1 = contour(tangentline, (0, 0), (5.5, 3.5), new real[]{0}, 100);
draw(g1, red);
