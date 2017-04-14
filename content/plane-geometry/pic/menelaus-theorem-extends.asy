
import geometry;

size(150);

pair A = (2, 5);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, SE);

draw(A -- B -- C -- cycle);

pair D = interp(B, C, 0.4);
label("$D$", D, S);
//draw(A -- D);

pair E = interp(C, A, 0.6);
label("$E$", E, NE);
//draw(B -- E);

pair F = interp(A, B, 0.7);
label("$F$", F, NW);
//draw(C -- F);

draw(D -- E -- F -- cycle);
fill(D -- E -- F -- cycle, gray);
