
import geometry;

size(150);

pair A = (2, 5);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

pair Y = interp(B, C, 0.6);
label("$Y$", Y, S);
draw(A -- Y);

line cx = parallel(locate(C), line(locate(A), locate(Y)));
pair X = locate(intersectionpoint(cx, line(locate(A), locate(B))));
label("$X$", X, NE);
draw(A -- X);
draw(C -- X);

line az = parallel(locate(B), line(locate(A), locate(Y)));
pair Z = locate(intersectionpoint(az, line(locate(A), locate(C))));
label("$Z$", Z, NW);
draw(A -- Z);
draw(B -- Z);
