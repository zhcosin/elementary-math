
settings.prc = false;
import three;

size(10cm, 0);

real a = 1, b = 3, c = 2, d = 1;
real u = 0.3, v = 0.6;

// 绘制二面角
// 三条平行线
draw((-a, c, 0) -- (0, c, 0) -- (b, c, 0));
draw((-a, 0, 0) -- O -- (b, 0, 0));
draw((-a, -u * c, v * c) -- (0, -u * c, v * c) -- (b, -u * c, v * c));
// 连接边缘
draw((-a, c, 0) -- (-a, 0, 0) -- (-a, -u * c, v * c));
draw((b, c, 0) -- (b, 0, 0) -- (b, -u * c, v * c));

label("$O$", O, N);
label("$A$", 0.8 * (0.8 * b, 0.5 * c, 0), SE);
label("$H$", (0.8 * 0.8 * b, 0, 0), S);
label("$B$", 0.8 * 0.8 * (b, (-u) * c, v * c), NE);

// 绘制两条射线
draw(O -- (0.8 * b, 0.5 * c, 0));
draw(O -- 0.8 * (b, (-u) * c, v * c));

// 绘制二面角的平面角
draw(0.8 * (0.8 * b, 0.5 * c, 0) -- (0.8 * 0.8 * b, 0, 0) -- 0.8 * 0.8 * (b, (-u) * c, v * c), blue);
draw(0.8 * (0.8 * b, 0.5 * c, 0) -- 0.8 * 0.8 * (b, (-u) * c, v * c), blue);