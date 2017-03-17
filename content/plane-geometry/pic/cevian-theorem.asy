
import geometry;

size(150);

pair A = (-2, 7);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

real tb = 0.6;
real tc = 0.4;

pair Z = ((1-tb)*C.x+tb*A.x, (1-tb)*C.y+tb*A.y);
label("$Z$", Z, NE);
pair X = ((1-tc)*A.x+tc*B.x, (1-tc)*A.y+tc*B.y);
label("$X$", X, NW);

draw(B -- Z);
draw(C -- X);

pair P = intersectionpoint(B -- Z, C -- X);
label("$P$", P, SSW);

line ay = line(locate(A), locate(P));

pair Y = locate(intersectionpoint(ay, line(locate(B), locate(C))));
label("$Y$", Y, S);

draw(A -- Y);
