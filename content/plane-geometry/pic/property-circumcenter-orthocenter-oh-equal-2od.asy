
import geometry;

size(150);

pair A = (2, 7);
pair B = (-5, 0);
pair C = (5, 0);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);

draw(A -- B -- C -- cycle);

circle co = circumcircle(locate(A), locate(B), locate(C));
pair O = locate(co.C);
label("$O$", O, N);

pair D = midpoint(B -- C);
label("$D$", D, S);
draw(O -- D);

pair H = locate(orthocentercenter(locate(A), locate(B), locate(C)));
label("$H$", H, S);
draw(A -- H);


