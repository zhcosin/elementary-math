
import graph;

size(150);

pair Z0 = (0, 0), Z1 = (4, 0), C = (1, 3);

real t = 1/3;
pair A = interp(Z0, C, t);
pair B = interp(C, Z1, t);
pair Z = interp(A, B, t);
draw(Z0 -- C -- Z1);
draw(A -- B);
pair f(real t) {
  return (1-t)^2*Z0 + 2*t*(1-t)*C+t^2*Z1;
}

draw(graph(f, 0, 1), red);
label("$A$", A, W);
label("$B$", B, NE);
label("$C$", C, N);
label("$Z_0$", Z0, S+S);
label("$Z_1$", Z1, SE);
label("$Z$", Z, N);
