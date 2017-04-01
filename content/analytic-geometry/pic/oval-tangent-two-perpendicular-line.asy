
import graph;
import geometry;

size(150);

real a = 5, b = 3, c = 4;

pair O = (0, 0);
label("$O$", O, S);

pair F1 = ((-1)* c, 0), F2 = (c, 0);
label("$F_1$", F1, S);
label("$F_2$", F2, S);
draw(F1 -- F2);

real theta = pi / 3;
pair P = (a * cos(theta), b * sin(theta));
label("$P$", P, N);

ellipse ee = ellipse(F1, F2, P);
draw(ee);

line mn = line(P.x/(a^2), P.y/(b^2), -1);

line f1m = perpendicular(F1, mn);
line f2n = perpendicular(F2, mn);

pair M = locate(intersectionpoint(mn, f1m));
pair N = locate(intersectionpoint(mn, f2n));
label("$M$", M, (0,1));
label("$N$", N, NE);
//draw(M -- N);

real fmn(real x) {
  return b^2 * (1- (P.x * x)/(a^2)) / P.y;
}

path pmn = graph(fmn, -5, 6);

draw(pmn); 

draw(F1 -- M);
draw(F2 -- N);

pair K = reflect(M, N) * F2;
label("$K$", K, NE);

draw(F1 -- K);
draw(K -- N);

draw(P -- F2);

draw(O -- M, dashed);
draw(O -- N, dashed);
draw(O -- K, dashed);
