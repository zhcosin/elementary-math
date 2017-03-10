
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

real nontangentline(real x) {
  return A.y-(2*b*b*A.x)/(a*a*A.y)*(x-A.x);
}

real tmin = A.x - 1;
real tmax = A.x + 3;

pair TL = (tmin, nontangentline(tmin));
pair TR = (tmax, nontangentline(tmax));
draw(TL -- TR);

pair C1 = reflect(TL, TR) * C;
label("$C'$", C1, N);
draw(C -- C1, dashed);
draw(A -- C1, dashed);

pair K = intersectionpoint(B -- C1, TL -- TR);
label("$K$", K, E);
draw(B -- K -- C);
draw(K -- C1, dashed);
