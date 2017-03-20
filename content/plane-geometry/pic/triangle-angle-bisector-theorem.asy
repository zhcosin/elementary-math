
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
draw(A -- E, red);

line af = bisector(locate(A), locate(B), locate(A), locate(C), 90);
pair F = intersectionpoint(af, line(locate(B), locate(C)));
label("$F$", F, S);

draw(C -- F, dashed);
draw(A -- F, red);
