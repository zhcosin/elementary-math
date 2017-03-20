
import geometry;

size(150);

pair A = (6, 8);
pair B = (-5, 0);
pair C = (5, 0);

label("$A$", A, N);
label("$B$", B, S);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

line ae = bisector(locate(A), locate(B), locate(A), locate(C));
pair E = intersectionpoint(ae, line(locate(B), locate(C)));
label("$E$", E, S);
draw(A -- E);

line af = bisector(locate(A), locate(B), locate(A), locate(C), 90);
pair F = intersectionpoint(af, line(locate(B), locate(C)));
label("$F$", F, S);

draw(C -- F);
draw(A -- F);

// 以下为辅助线

line ap = parallel(locate(C), line(locate(A), locate(E)));
line aq = parallel(locate(C), line(locate(A), locate(F)));

pair P = locate(intersectionpoint(ap, line(locate(A), locate(B))));
pair Q = locate(intersectionpoint(aq, line(locate(A), locate(B))));

label("$P$", P, E);
label("$Q$", Q, NW);

draw(A -- P, dashed);
draw(C -- P, dashed);
draw(C -- Q, dashed);
