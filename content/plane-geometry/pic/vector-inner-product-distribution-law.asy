
import geometry;

size(150);

pair O = (0, 0);
label("$O$", O, SW);

pair A = (3, 1);
label("$A$", A, E);

pair B = (1,2);
label("$B$", B, N);

pair D = (4, 3);
label("$D$", D, E);

pair A1 = (3, 0);
label("$A_1$", A1, S);

pair B1 = (1, 0);
label("$B_1$", B1, S);

pair D1 = (4, 0);
label("$D_1$", D1, S);

pair C = (5, 0);
label("$C$", C, E);

draw(O -- A, Arrow);
draw(O -- B, Arrow);
draw(O -- C, Arrow);
draw(O -- D, Arrow);
draw(A -- D);
draw(B -- D);

draw(A -- A1, dashed);
draw(B -- B1, dashed);
draw(D -- D1, dashed);
