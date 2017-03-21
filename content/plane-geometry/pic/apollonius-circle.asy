
import geometry;

size(150);

pair P = (6, 8);
pair A = (-5, 0);
pair B = (5, 0);

label("$P$", P, N);
label("$A$", A, S);
label("$B$", B, S);

draw(A -- B);

draw(P -- A);
draw(P -- B);

line pe = bisector(locate(P), locate(A), locate(P), locate(B));
pair E = intersectionpoint(pe, line(locate(A), locate(B)));
label("$E$", E, SW);
draw(P -- E, dashed);

line pf = bisector(locate(P), locate(A), locate(P), locate(B), 90);
pair F = intersectionpoint(pf, line(locate(A), locate(B)));
label("$F$", F, SE);

draw(B -- F);
draw(P -- F, dashed);

circle apollonius = circle(locate(E), locate(F));
draw(apollonius, red);
