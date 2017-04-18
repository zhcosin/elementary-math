
import geometry;

size(200);

pair A = (2, 8);
point at = locate(A);
label("$A$", A, NE);
pair B = (-5, 0);
point bt = locate(B);
label("$B$", B, SW);
pair C = (5, 0);
point ct = locate(C);
label("$C$", C, SE);

line ab = line(at, bt);
line bc = line(bt, ct);
line ca = line(ct, at);

draw(A -- B -- C -- cycle);

pair H = locate(orthocentercenter(locate(A), locate(B), locate(C)));
label("$H$", H, NE);

pair D = interp(B, C, 0.5);
label("$D$", D, S);
draw(A -- D);

line ad = line(locate(A), locate(D));
line hl = perpendicular(locate(H), ad);
pair L = locate(intersectionpoint(hl, ad));
label("$L$", L, NW);

pair E = locate(intersectionpoint(hl, ca));
label("$E$", E, NE);
pair F = locate(intersectionpoint(hl, ab));
label("$F$", F, NW);

line ef = line(locate(E), locate(F));

draw(E -- F);
draw(B -- E);
draw(C -- F);

pair K = intersectionpoint(B -- E, C -- F);
label("$K$", K, (1,0));
draw(A -- K);

line am = perpendicular(at, bc);
pair M = locate(intersectionpoint(am, bc));
label("$M$", M, S);
draw(K -- M, dashed);

pair P = locate(intersectionpoint(bc, ef));
label("$P$", P, S);

draw(E -- P, dashed);
draw(C -- P, dashed);
