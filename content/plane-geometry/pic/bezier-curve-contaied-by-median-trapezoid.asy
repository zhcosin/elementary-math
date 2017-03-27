
import graph;

size(150);

pair A = (1, 3), B = (0, 0), C = (4, 0);
label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, SE);
draw(A -- B -- C -- cycle);

pair E = midpoint(A -- B);
pair F = midpoint(A -- C);
label("$E$", E, NW);
label("$F$", F, NE);
draw(E -- F);

pair f(real t) {
  return (1-t)^2*B + 2*t*(1-t)*A+t^2*C;
}

draw(graph(f, 0, 1), red);
