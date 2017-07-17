
import graph;
import geometry;
import contour;

size(200);

//xaxis("$x$", -6,6, Arrow);
//yaxis("$y$", -4,4, Arrow);

real a = 5;
real b = 3;
real c = 4;

pair B = (-1*c, 0);
label("$B$", B, S);
pair C = (c, 0);
label("$C$", C, S);

pair O = (0,0);
//label("$O$", O, S);
path myellipse = ellipse(O, a, b);
//draw(myellipse);

real theta = pi / 3;
pair A = (a*cos(theta), b*sin(theta));
label("$A$", A, N);

real tangentline(pair t) {
  real x = t.x;
  real y = t.y;
  return A.x*x/(a*a)+A.y*y/(b*b)-1;
}

guide[][] g1 = contour(tangentline, (0, 0), (5.5, 3.5), new real[]{0}, 100);
//draw(g1);

draw(B -- A -- C -- cycle);

real tangentline2(real x) {
  return A.y-(b*b*A.x)/(a*a*A.y)*(x-A.x);
}

real tmin = A.x - 1;
real tmax = A.x + 3;

pair TL = (tmin, tangentline2(tmin));
pair TR = (tmax, tangentline2(tmax));
draw(TL -- TR);

pair C1 = reflect(TL, TR) * C;
label("$C'$", C1, N);
draw(C -- C1, dashed);
draw(A -- C1, dashed);

pair P = (A.x + 1, tangentline2(A.x+1));
label("$P$", P, E);
draw(B -- P -- C);
draw(P -- C1, dashed);
