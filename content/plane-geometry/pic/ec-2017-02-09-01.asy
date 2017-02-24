
import geometry;

size(250, 250);

pair A = (0, 2);
label("$A$", A, N);
pair B = (-2, 0);
label("$B$", B, S);
pair C = (1, 0);
label("$C$", C, S);
draw(A -- B -- C -- cycle);

pair D = rotate(90, B) * A;
label("$D$", D, SW);
pair E = rotate(-90, A) * B;
label("$E$", E, NW);
draw(A -- E -- D -- B);

pair F = rotate(-90, C) * A;
label("$F$", F, SE);
pair G = rotate(90, A) * C;
label("$G$", G, NE);
draw(A -- G -- F --C);

draw(C -- D);
draw(C -- E);

draw(B -- F);
draw(B -- G);

pair S = intersectionpoint(C -- E, A -- B);
label("$S$", S, W);
pair P = intersectionpoint(C -- D, A -- B);
label("$P$", P, N);

pair T = intersectionpoint(B -- G, A -- C);
label("$T$", T, (1,-0.5));
pair Q = intersectionpoint(B -- F, A -- C);
label("$Q$", Q, (0.5,1));

draw(S -- T);
draw(P -- Q);