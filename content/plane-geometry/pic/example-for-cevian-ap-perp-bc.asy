
import geometry;

size(200);

pair A = (3, 5);
label("$A$", A, N);
pair B = (-5, 0);
label("$B$", B, SW);
pair C = (5, 0);
label("$C$", C, SE);
draw(A -- B -- C -- cycle);

line ad = bisector(locate(A), locate(B), locate(A), locate(C));
pair D = locate(intersectionpoint(ad, line(locate(B), locate(C))));
label("$D$", D, S);
draw(A -- D);

line de = perpendicular(locate(D), line(locate(A), locate(B)));
pair E = locate(intersectionpoint(de, line(locate(A), locate(B))));
label("$E$", E, NW);
draw(D -- E);

line df = perpendicular(locate(D), line(locate(A), locate(C)));
pair F = locate(intersectionpoint(df, line(locate(A), locate(C))));
label("$F$", F, NE);
draw(D -- F);

draw(B -- F);
draw(C -- E);

pair P = intersectionpoint(B -- F, C -- E);
label("$P$", P, NE);
draw(A -- P);

pair Q = locate(intersectionpoint(line(locate(B), locate(C)), line(locate(A), locate(P))));
label("$Q$", Q, S);
draw(P -- Q, dashed);

perpendicular(E, SE, E -- D);
perpendicular(F, NE, F -- D);
