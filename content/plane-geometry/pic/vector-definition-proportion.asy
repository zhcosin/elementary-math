
import geometry;

size(120);

pair O = (2, 7);
label("$O$", O, N);
pair A = (-5, 0);
label("$A$", A, SW);
pair B = (5, 0);
label("$B$", B, SE);
pair P = (-1, 0);
label("$P$", P, S);


draw(line(locate(A), locate(P)));

draw(O -- A, Arrow);
draw(O -- B, Arrow);
draw(O -- P, Arrow);
