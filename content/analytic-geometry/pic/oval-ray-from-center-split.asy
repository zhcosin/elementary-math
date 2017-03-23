
import geometry;

size(150);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

pair O = (0, 0);
label("$O$", O, S);

pair F1 = (-1 * c, 0);
pair F2 = (c, 0);

label("$F_1$", F1, S);
label("$F_2$", F2, S);

draw(F1 -- F2);

path oval = ellipse(O, a, b);
draw(oval);

real theta = 5 * pi / 12;

pair P = (a * cos(theta), b * sin(theta));
label("$P$", P, ENE);

draw(P -- F1);
draw(P -- F2);

pair M = locate(relpoint(line(locate(O), locate(P)), 0.6));
pair N = locate(relpoint(line(locate(O), locate(P)), 1.6));

label("$M$", M, SSE);
label("$N$", N, NW);

draw(M -- F1);
draw(M -- F2);
draw(N -- F1);
draw(N -- F2);

pair K = locate(relpoint(line(locate(O), locate(P)), 2));
draw(O -- K);
