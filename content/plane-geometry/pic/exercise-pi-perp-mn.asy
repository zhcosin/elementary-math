
import geometry;

size(200);

pair O = (0, 0);
pair A = (-2, 4);
pair B = (-5, 0);
pair C= (5, 0);

label("$A$", A, (0,1));
label("$B$", B, SW);
label("$C$", C, SE);

draw(A -- B -- C -- cycle);

circle theincircle = incircle(locate(A), locate(B), locate(C));
draw(theincircle);
pair I = locate(theincircle.C);
label("$I$", I, S);

pair D = locate(intersectionpoints(B -- C, theincircle)[0]);
pair E = locate(intersectionpoints(C -- A, theincircle)[0]);
pair F = locate(intersectionpoints(A -- B, theincircle)[0]);

label("$D$", D, S);
label("$E$", E, NE);
label("$F$", F, W);

draw(B -- E);
draw(C -- F);

pair P = intersectionpoint(B -- E, C -- F);
label("$P$", P, (0,1));

draw(P -- I);

line lineAB = line(locate(A), locate(B));
line lineAC = line(locate(A), locate(C));

line lineDE = line(locate(D), locate(E));
line lineDF = line(locate(D), locate(F));

pair M = locate(intersectionpoint(lineAB, lineDE));
pair N = locate(intersectionpoint(lineAC, lineDF));

label("$M$", M, NE);
label("$N$", N, NW);

draw(M -- A -- N);
draw(M -- N);

draw(D -- M);
draw(D -- N);
