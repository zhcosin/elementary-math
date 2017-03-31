
import geometry;

size(130);

pair A = (-2, 7);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, S);

draw(A -- B -- C -- cycle);

pair D = midpoint(B -- C);
label("$D$", D, S);
pair E = midpoint(A -- B);
label("$E$", E, NW);
pair F = midpoint(A -- C);
label("$F$", F, NE);

draw(A -- D);
draw(B -- F);
draw(C -- E);

pair G = interp(A, D, 2/3);
label("$G$", G, SSW);
