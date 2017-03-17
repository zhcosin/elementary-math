
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

pair Y = ((1-ta)*B.x+ta*C.x, (1-ta)*B.y+ta*C.y);
label("$Y$", Y, SE);
pair X = ((1-tc)*A.x+tc*B.x, (1-tc)*A.y+tc*B.y);
label("$X$", X, NW);
pair Z = intersectionpoint(X -- Y, A -- C);
label("$Z$", Z, NE);

draw(C -- Y);
draw(X -- Y -- Z, red);
