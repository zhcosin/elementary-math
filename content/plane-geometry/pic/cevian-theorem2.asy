
import geometry;

size(150);

pair A = (2, 5);
label("$A$", A, NW);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (0, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

real tx = -0.4;
real ty = 2;

pair X = ((1-tx)*A.x+tx*B.x, (1-tx)*A.y+tx*B.y);
label("$X$", X, E);
pair Y = ((1-ty)*B.x+ty*C.x, (1-ty)*B.y+ty*C.y);
label("$Y$", Y, SE);

draw(A -- X);
draw(C -- Y);

draw(A -- Y);
draw(C -- X);

pair P = intersectionpoint(A -- Y, C -- X);
label("$P$", P, E);
draw(B -- P);

pair Z = intersectionpoint(B -- P, A -- C);
label("$Z$", Z, S);
