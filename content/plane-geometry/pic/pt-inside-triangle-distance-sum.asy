
import geometry;

size(120);

pair A = (2, 6);
pair B = (-5, 0);
pair C = (5, 0);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);

draw(A -- B -- C -- cycle);

real t = 0.6;

pair D = locate(relpoint(line(locate(B), locate(C)), t));
label("$D$", D, S);

draw(A -- D, dashed);

real s = 0.6;
pair P = locate(relpoint(line(locate(D), locate(A)), s));
label("$P$", P, E);

draw(P -- B);
draw(P -- C);

pair E = locate(intersectionpoint(line(locate(A), locate(B)), line(locate(C), locate(P))));
label("$E$", E, W);

draw(P -- E, dashed);

