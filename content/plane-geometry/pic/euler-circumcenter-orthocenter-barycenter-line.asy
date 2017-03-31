
import geometry;

size(150);

pair A = (2, 7);
pair B = (-5, 0);
pair C = (5, 0);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);

triangle abc = triangle(locate(A), locate(B), locate(C));

// draw(A -- B -- C -- cycle);
draw(abc);

circle co = circumcircle(locate(A), locate(B), locate(C));
pair O = locate(co.C);
label("$O$", O, NW);

pair D = midpoint(B -- C);
label("$D$", D, S);
draw(O -- D);
draw(A -- D);

pair H = locate(orthocentercenter(locate(A), locate(B), locate(C)));
label("$H$", H, SE);
draw(A -- H);
draw(O -- H);

pair G = locate(centroid(abc));
label("$G$", G, SE);


