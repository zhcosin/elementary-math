
import geometry;

size(150);

pair A = (2, 7);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, SE);

draw(A -- B -- C -- cycle);

pair D = interp(B, C, 0.7);
label("$D$", D, S);
draw(A -- D);

pair E = interp(C, A, 0.6);
label("$E$", E, NE);
draw(B -- E);

pair F = interp(A, B, 0.7);
label("$F$", F, NW);
draw(C -- F);

pair X = intersectionpoint(B -- E, C -- F);
label("$X$", X, S);

pair Y = intersectionpoint(C -- F, A -- D);
label("$Y$", Y, NE);

pair Z = intersectionpoint(A -- D, B -- E);
label("$Z$", Z, NW);

fill(X -- Y -- Z -- cycle, gray);
