
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

pair Y = ((1-tb)*C.x+tb*A.x, (1-tb)*C.y+tb*A.y);
label("$Y$", Y, NE);
pair Z = ((1-tc)*A.x+tc*B.x, (1-tc)*A.y+tc*B.y);
label("$Z$", Z, NW);

draw(B -- Y);
draw(C -- Z);

pair P = intersectionpoint(B -- Y, C -- Z);
label("$P$", P, SSW);

line ax = line(locate(A), locate(P));

pair X = locate(intersectionpoint(ax, line(locate(B), locate(C))));
label("$X$", X, S);

draw(A -- X);
