
import geometry;

size(150);

pair A = (2, 5);
label("$A$", A, NW);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (0, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

real tx = -0.2;
real ty = 2;

pair X = ((1-tx)*A.x+tx*B.x, (1-tx)*A.y+tx*B.y);
label("$X$", X, E);
pair Y = ((1-ty)*B.x+ty*C.x, (1-ty)*B.y+ty*C.y);
label("$Y$", Y, SE);
pair Z = locate(intersectionpoint(line(locate(X), locate(Y)), line(locate(A), locate(C))));
label("$Z$", Z, N);

draw(A -- X);
draw(C -- Y);
draw(A -- Z);
draw(X -- Y -- Z, red);
