
import geometry;

size(150);

pair A = (2, 7);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

real ta = 1.6;
real tc = 0.4;

pair X = ((1-ta)*B.x+ta*C.x, (1-ta)*B.y+ta*C.y);
label("$X$", X, SE);
pair Z = ((1-tc)*A.x+tc*B.x, (1-tc)*A.y+tc*B.y);
label("$Z$", Z, NW);
pair Y = intersectionpoint(X -- Z, A -- C);
label("$Y$", Y, NE);

draw(C -- X);
draw(X -- Y -- Z);
