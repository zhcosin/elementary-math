
import graph;
import geometry;
import contour;

size(200);

xaxis("$x$", -6,8, Arrow);
yaxis("$y$", -4,6, Arrow);

real a = 5;
real b = 3;
real c = 4;

pair F1 = (-1*c, 0);
label("$F_1$", F1, S);
pair F2 = (c, 0);
label("$F_2$", F2, S);

pair O = (0,0);
label("$O$", O, SW);
path myellipse = ellipse(O, a, b);
draw(myellipse);

real theta1 = 1.8 * pi / 3;
pair T1 = (a*cos(theta1), b*sin(theta1));
label("$T_1$", T1, N);

real theta2 = - pi / 12;
pair T2 = (a*cos(theta2), b*sin(theta2));
label("$T_2$", T2, SE);

draw(T1 -- T2);

real tangentline(real x, pair T) {
  return T.y-(b*b*T.x)/(a*a*T.y)*(x-T.x);
}

real delta1 = 4;
real delta2 = 1;
pair T11 = (T1.x+delta1, tangentline(T1.x+delta1, T1));
pair T21 = (T2.x+delta2, tangentline(T2.x+delta2, T2));

//pair P = intersectionpoint(T1 -- T11, T2 -- T21);
point PT = intersectionpoint(line(T1, T11), line(T2, T21));
pair P = locate(PT);
label("$P$", P, NE);
draw(O -- P);
draw(P -- T1);
draw(P -- T2);

pair Q = intersectionpoint(O -- P, T1 -- T2);
label("$Q$", Q, N);
pair R = intersectionpoint(O -- P, myellipse); 
label("$R$", R, E);
