
import geometry;

size(150);

pair A = (2, 7);
pair B = (-5, 0);
pair C = (5, 0);
label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);

triangle triangleABC = triangle(locate(A), locate(B), locate(C));
draw(triangleABC);

circle circleABC = circumcircle(triangleABC);
draw(circleABC);

pair I = incenter(triangleABC);
label("$I$", I, NE);

pair K = locate(intersectionpoints(circleABC, line(locate(A), locate(I)))[0]);
label("$K$", K, S);
draw(A -- K);

draw(B -- I -- C);
draw(B -- K -- C, dashed);
