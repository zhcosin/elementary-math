
import graph;

size(180);

pair Z0 = (0, 0), Z1 = (3, 0);
pair C1 = (1, 1), C2 = (2, 1);
label("$Z_0$", Z0, SW);
label("$Z_1$", Z1, SE);
label("$C_1$", C1, N);
label("$C_2$", C2, N);

draw(Z0 -- C1 -- C2 -- Z1);

real t = 1/3;
pair A1 = interp(Z0, C1, t);
pair A2 = interp(C1, C2, t);
pair A3 = interp(C2, Z1, t);
label("$A_1$", A1, NW);
label("$A_2$", A2, N);
label("$A_3$", A3, NE);
draw(A1 -- A2 -- A3);

pair B1 = interp(A1, A2, t);
pair B2 = interp(A2, A3, t);
label("$B_1$", B1, NW);
label("$B_2$", B2, NE);
draw(B1 -- B2);

pair Z = interp(B1, B2, t);
label("$Z$", Z, S);


pair f(real t) {
  return (1-t)^3*Z0 + 3*(1-t)^2*t*C1 + 3*(1-t)*t^2*C2 + t^3*Z1;
}

draw(graph(f, 0, 1), red);
