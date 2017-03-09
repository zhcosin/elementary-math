
import graph;
import geometry;

size(200,200);

xaxis("$x$", -8, 8, Arrow);
yaxis("$x$", -4, 4, Arrow);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

path theellipse = ellipse((0,0), a, b);
draw(theellipse);

pair F1 = (-1*c, 0);
pair F2 = (c, 0);
label("$F_1$", F1, SE);
label("$F_2$", F2, S);

real theta = 2*pi/3;
pair P=(a*cos(theta), b*sin(theta));
label("$P$", P, NE);

draw(P -- F1);
draw(P -- F2);

draw((-a*a/c, 4) -- (-a*a/c, -4));
draw((a*a/c, 4) -- (a*a/c, -4));
label("$l_1$", (-a*a/c, 3), W);
label("$l_2$", (a*a/c, 3), E);

draw(P -- (-a*a/c,P.y));
draw(P -- (a*a/c,P.y));

draw(arc(P, F1, F2, 1));
label("$\theta$", (-3,0), NE);

line lpq = line(P, true, F1, true);
pair[] pq = intersectionpoints(lpq, theellipse);
pair Q=pq[1];
label("$Q$", Q, W);
draw(F1 -- Q);


