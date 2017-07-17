
import geometry;

size(150);

real a = 5, b = 3, c = sqrt(a^2-b^2);

pair O = (0, 0);
//label("$O$", O, S);
pair F1 = ((-1) * c, 0), F2= (c, 0);
label("$F_1$", F1, S);
label("$F_2$", F2, S);
draw(F1 -- F2);

path myellipse = ellipse(O, a, b);
draw(myellipse);

real theta = pi / 3;
pair P = (a * cos(theta), b * sin(theta));
label("$P$", P, NE);
draw(F1 -- P -- F2);

pair I = locate(incenter(locate(F1), locate(F2), locate(P)));
label("$I$", I, NW);

line lpi = line(locate(P), locate(I));
line lf1i = line(locate(F1), locate(I));
line lf2i = line(locate(F2), locate(I));

line lf1f2 = line(locate(F1), locate(F2));
line lpf1 = line(locate(P), locate(F1));
line lpf2 = line(locate(P), locate(F2));

pair D = locate(intersectionpoint(lpi, lf1f2));
label("$D$", D, S);
draw(P -- D);
draw(F1 -- I -- F2);

line lui = parallel(I, lpf1);
line lvi = parallel(I, lpf2);

pair U = locate(intersectionpoint(lf1f2, lui));
pair V = locate(intersectionpoint(lf1f2, lvi));
label("$U$", U, S);
label("$V$", V, S);
draw(U -- I -- V, dashed);
