
import geometry;

size(180);

pair A = (0, 5);
label("$A$", A, W);
pair B = (-5,0);
label("$B$", B, S);
pair C = (3, 0);
label("$C$", C, S);

circle ca = circle(locate(A), 1);
circle cb = circle(locate(B), 2);
circle cc = circle(locate(C), 3);

draw(ca);
draw(cb);
draw(cc);

point commontangentsintersectionpoint(circle c1, circle c2) {
  if (c1.r == c2.r)
    return null;

  real t = -1 * c1.r / c2.r;
  pair P = (c1.C.x/(1+t) + t * c2.C.x/(1+t), c1.C.y/(1+t) + t * c2.C.y/(1+t));
  point pt = locate(P);
  return pt;
}

line[] commontangents(circle c1, circle c2) {
  point P = commontangentsintersectionpoint(c1, c2);
  if (alias(P, null))
    return null;

  return tangents(c1, P);
}

point pab = commontangentsintersectionpoint(ca, cb);
line[] lab = commontangents(ca, cb);
line perpb1 = perpendicular(cb.C, lab[0]);
line perpb2 = perpendicular(cb.C, lab[1]);
point pt1 = intersectionpoint(lab[0], perpb1);
point pt2 = intersectionpoint(lab[1], perpb2);
draw(locate(pab) -- locate(pt1));
draw(locate(pab) -- locate(pt2));

point pac = commontangentsintersectionpoint(ca, cc);
line[] lac = commontangents(ca, cc);
line perpac1 = perpendicular(cc.C, lac[0]);
line perpac2 = perpendicular(cc.C, lac[1]);
point ptac1 = intersectionpoint(lac[0], perpac1);
point ptac2 = intersectionpoint(lac[1], perpac2);
draw(locate(pac) -- locate(ptac1));
draw(locate(pac) -- locate(ptac2));

point pbc = commontangentsintersectionpoint(cc, cb);
line[] lbc = commontangents(cc, cb);
line perpbc1 = perpendicular(cc.C, lbc[0]);
line perpbc2 = perpendicular(cc.C, lbc[1]);
point ptbc1 = intersectionpoint(lbc[0], perpbc1);
point ptbc2 = intersectionpoint(lbc[1], perpbc2);
draw(locate(pbc) -- locate(ptbc1));
draw(locate(pbc) -- locate(ptbc2));

label("$P$", pab, E);
label("$Q$", pac, W);
label("$R$", pbc, W);

draw(pab -- A -- B, dashed);
draw(pbc -- B -- C, dashed);
draw(pac -- A -- C, dashed);
draw(pab -- pbc -- pac, dashed+red);
