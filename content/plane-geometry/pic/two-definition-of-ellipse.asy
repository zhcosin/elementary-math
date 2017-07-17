
import geometry;

size(200,200);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

path theellipse = ellipse((0,0), a, b);
draw(theellipse);

pair O = (0, 0);
label("$O$", O, S);

pair F1 = (-1*c, 0);
pair F2 = (c, 0);
label("$F_1$", F1, SE);
label("$F_2$", F2, S);
draw(F1 -- F2);

real theta = 2*pi/3;
pair P=(a*cos(theta), b*sin(theta));
label("$P$", P, NE);

draw("$r$", P -- F1);
draw(P -- F2);

pair L = (-a*a/c, 0);
label("$L$", L, W);
draw(L -- F1);
draw((-a*a/c, 4) -- (-a*a/c, -4));
//draw((a*a/c, 4) -- (a*a/c, -4));
label("$l_1$", (-a*a/c, 3), W);
//label("$l_2$", (a*a/c, 3), E);

draw("$d$", P -- (-a*a/c,P.y));
//draw(P -- (a*a/c,P.y));

draw(arc(P, F1, F2, 1));
label("$\theta$", (-3,0), NE);
