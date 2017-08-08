
draw((-20,0) -- (150,0), Arrow);
draw((0,-20) -- (0, 140), Arrow);

pair P = (10,10 * sqrt(3));
pair A = (30,10 * sqrt(30));
pair AX = (A.x, 0);
label("$x_1$", AX, S);
pair AY = (0, A.y);
label("$y_1$", AY, W);
pair M = (80, 10 * sqrt(70)+13);
pair MX = (M.x, 0);
label("$\frac{x_1+x_2}{2}$", MX, S);
pair MY = (0, M.y);
label("$f\left(\frac{x_1+x_2}{2}\right)$", MY, W);
pair B = (130,  10 * sqrt(130));
pair BX = (B.x, 0);
label("$x_2$", BX, S);
pair BY = (0, B.y);
label("$y_2$", BY, W);
pair Q = (140, 10 * sqrt(140)-5);

pair N = intersectionpoint(A -- B, M -- MX);
pair NY = (0, N.y);
label("$\frac{f(x_1)+f(x_2)}{2}$", NY, SW);

draw(P .. A .. M .. B .. Q);
draw(A -- B, dashed);
draw(A -- AX, dashed);
draw(A -- AY, dashed);
draw(M -- MX, dashed);
draw(M -- MY, dashed);
draw(B -- BX, dashed);
draw(B -- BY, dashed);
draw(N -- NY, dashed);