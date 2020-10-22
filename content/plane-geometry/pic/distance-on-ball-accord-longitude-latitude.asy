settings.render=1;

import three;

size(5cm,0);

real r = 1;
dot(O);
label("$O$", O, S);

real longitude1 = 0;
real longitude2 = pi/4;
real latitude1=pi/3;
real latitude2=pi/8;

triple normal1 = (cos(longitude1+pi/2),sin(longitude1+pi/2),0);
triple normal2 = (cos(longitude2+pi/2),sin(longitude2+pi/2),0);

triple N = (0, 0, r);
dot(N);
label("$N$", N, N);

draw(O -- N, dashed);

triple P = (r*cos(longitude1), r*sin(longitude1), 0);
triple Q = (r*cos(longitude2), r*sin(longitude2), 0);

draw(arc(O, N, P, normal1), black);
draw(arc(O, N, Q, normal2), black);

draw(O -- P, dashed);
draw(O -- Q, dashed);
draw(arc(O, P, Q, Z));

triple A = (r*cos(latitude1)*cos(longitude1), r*cos(latitude1)*sin(longitude1), r*sin(latitude1));
dot(A);
label("$A$", A, N);
triple B = (r*cos(latitude2)*cos(longitude2), r*cos(latitude2)*sin(longitude2), r*sin(latitude2));
dot(B);
label("$B$", B, E);
triple C = (r*cos(latitude2)*cos(longitude1), r*cos(latitude2)*sin(longitude1), r*sin(latitude2));

triple M = (0, 0, sin(latitude2));
draw(arc(M, C, B, Z));

draw(O -- A, dashed);
draw(O -- B, dashed);