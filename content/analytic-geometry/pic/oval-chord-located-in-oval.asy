
import geometry;

size(150);

real a = 5;
real b = 3;
real c = sqrt(a^2-b^2);

pair O = (0, 0);
pair F1 = (-1 * c, 0);
pair F2 = (c, 0);
label("$F_1$", F1, S);
label("$F_2$", F2, S);

path oval = ellipse(O, a, b);
draw(oval);

real theta1 = 2 * pi / 3;
real theta2 = pi / 6;

pair A = (a * cos(theta1), b * sin(theta1));
pair B = (a * cos(theta2), b * sin(theta2));
label("$A$", A, NW);
label("$B$", B, NE);

draw(line(locate(A), locate(B)));
draw(A -- F1);
draw(A -- F2);
draw(B -- F1);
draw(B -- F2);

real t = 0.3;
pair P = ((1-t)*A.x+t*B.x, (1-t)*A.y+t*B.y);
label("$P$", P, N);
draw(P -- F1);
draw(P -- F2);

real s = 1.3;
pair Q = ((1-s)*A.x+s*B.x, (1-s)*A.y+s*B.y);
label("$Q$", Q, N);
draw(Q -- F1);
draw(Q -- F2);



	  
