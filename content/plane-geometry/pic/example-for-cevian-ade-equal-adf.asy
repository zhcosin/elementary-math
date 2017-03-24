
import geometry;

size(170);

pair A = (2, 8);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, SE);
draw(A -- B -- C -- cycle);

line ad = perpendicular(locate(A), line(locate(B), locate(C)));
pair D = locate(intersectionpoint(ad, line(locate(B), locate(C))));
label("$D$", D, S);
draw(A -- D);

real t = 0.6;
pair P = ((1-t)*A.x+t*D.x, (1-t)*A.y+t*D.y);
label("$P$", P, NE);

pair E = locate(intersectionpoint(line(locate(C), locate(P)), line(locate(A), locate(B))));
label("$E$", E, W);

pair F = locate(intersectionpoint(line(locate(B), locate(P)), line(locate(A), locate(C))));
label("$F$", F, E);

draw(B -- F);
draw(C -- E);

draw(D -- E);
draw(D -- F);

line ats = parallel(locate(A), line(locate(B), locate(C)));
pair T = locate(intersectionpoint(ats, line(locate(D), locate(E))));
pair S = locate(intersectionpoint(ats, line(locate(D), locate(F))));

label("$T$", T, NW);
label("$S$", S, NE);

draw(T -- S, dashed);
draw(E -- T, dashed);
draw(F -- S, dashed);



