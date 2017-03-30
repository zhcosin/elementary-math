
import geometry;

size(150);

pair O = (0, 0);
real r = 5;
circle co = circle(locate(O), r);
draw(co);

real theta1 = pi / 3, theta2 = (-1) * pi / 6, theta3 = (-1) * pi / 2;

pair P = (-1, 0);

point PT = locate(P);

line ad = line(PT, 80);
line be = line(PT, 30);
line cf = line(PT, -30);

point A = locate(intersectionpoints(ad, co)[0]);
point D = locate(intersectionpoints(ad, co)[1]);
label("$A$", A, SW);
label("$D$", D, NE);
draw(A -- D);

point B = locate(intersectionpoints(be, co)[0]);
point E = locate(intersectionpoints(be, co)[1]);
label("$B$", B, SW);
label("$E$", E, NE);
draw(B -- E);

point F = locate(intersectionpoints(cf, co)[0]);
point C = locate(intersectionpoints(cf, co)[1]);
label("$C$", C, W);
label("$F$", F, SE);
draw(C -- F);

draw(A -- B -- C -- D -- E -- F -- cycle);

draw(A -- C -- E -- cycle, dashed);

pair X = intersectionpoint(A -- C, B -- E);
label("$X$", X, NNE);
pair Y = intersectionpoint(C -- E, D -- A);
label("$Y$", Y, SE);
pair Z = intersectionpoint(E -- A, F -- C);
label("$Z$", Z, W);
