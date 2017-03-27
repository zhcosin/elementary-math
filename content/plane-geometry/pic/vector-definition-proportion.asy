
import geometry;

size(120);

pair A = (2, 7);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, SE);
pair D = (-1, 0);
label("$D$", D, S);


draw(line(locate(B), locate(C)));

draw(A -- B, Arrow);
draw(A -- C, Arrow);
draw(A -- D, Arrow);
