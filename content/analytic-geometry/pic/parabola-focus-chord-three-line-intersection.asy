
import geometry;
import graph;

size(150);

real p = 1/2;
real r = 3;
pair O = (0, 0);
pair F = (p/2, 0);
label("$F$", F, SSE);
pair D = (r*p, 0);
label("$D$", D, S);
pair R = (-p/2,0);
label("$R$", R, NW);


xaxis("$x$", Arrow);
yaxis("$y$", Arrow);

line dl = line(2, 0, p);
draw(dl);

parabola pb = parabola(locate(F), dl);

pair foo(real t) {
  real x = t^2;
  real y=t;
  return (x,y);
}

draw(graph(foo, -1.4, 1.4));

line lmn = line(locate(F), 75);

pair M = intersectionpoints(lmn, pb)[0];
pair N = intersectionpoints(lmn, pb)[1];
label("$M$", M, (0,-1));
label("$N$", N, (0,1));

draw(M -- N);

line lmm0 = perpendicular(locate(M), dl);
line lnn0 = perpendicular(locate(N), dl);

//pair M0 = intersectionpoint(dl, lmm0);
pair N0 = intersectionpoint(dl, lnn0);
//label("$M_0$", M0, NW);
label("$N_0$", N0, W);
//draw(M -- M0, dashed);
draw(N -- N0, dashed);

line ldm = line(locate(D), locate(M));
line ldn = line(locate(D), locate(N));

pair P = intersectionpoint(dl, ldm);
pair Q = intersectionpoint(dl, ldn);
label("$P$", P, (-1,0));
label("$Q$", Q, (-1,0));

draw(D -- P);
draw(D -- Q);

draw(P -- N);
draw(Q -- M);

pair T = intersectionpoint(P -- N, Q -- M);

pair N1 = (N.x, 0);
label("$N_1$", N1, NE);
draw(N -- N1, dashed);
