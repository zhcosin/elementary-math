
import geometry;

size(130);

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

real theta = 2 * pi / 3;
pair P = (a * cos(theta), b * sin(theta));
label("$P$", P, N);

draw(O -- P);
draw(P -- F1);
draw(P -- F2);

pair E = locate(intersectionpoint(line(locate(P), locate(F1)), parallel(locate(O), line(locate(P), locate(F2)))));
label("$E$", E, NW);

draw(O -- E, dashed);

