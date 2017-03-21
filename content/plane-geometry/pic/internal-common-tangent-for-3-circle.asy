
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

point internal_common_tangents_interscpt(circle c1, circle c2) {
  if (c1.r == c2.r)
    return null;

  real t = 1 * c1.r / c2.r;
  pair P = (c1.C.x/(1+t) + t * c2.C.x/(1+t), c1.C.y/(1+t) + t * c2.C.y/(1+t));
  point pt = locate(P);
  return pt;
}

line[] commontangents(circle c1, circle c2) {
  point P = internal_common_tangents_interscpt(c1, c2);
  if (alias(P, null))
    return null;

  return tangents(c1, P);
}

point pab = internal_common_tangents_interscpt(ca, cb);
line[] lab = tangents(ca, pab);
point pab0a = intersectionpoints(lab[0], ca)[0];
point pab0b = intersectionpoints(lab[0], cb)[0];
draw(pab0a -- pab0b);
point pab1a = intersectionpoints(lab[1], ca)[0];
point pab1b = intersectionpoints(lab[1], cb)[0];
draw(pab1a -- pab1b);


point pac = internal_common_tangents_interscpt(ca, cc);
line[] lac = tangents(ca, pac);
point pac0a = intersectionpoints(lac[0], ca)[0];
point pac0c = intersectionpoints(lac[0], cc)[0];
draw(pac0a -- pac0c);
point pac1a = intersectionpoints(lac[1], ca)[0];
point pac1c = intersectionpoints(lac[1], cc)[0];
draw(pac1a -- pac1c);

point pbc = internal_common_tangents_interscpt(cc, cb);
line[] lbc = tangents(cc, pbc);
point pbc0b = intersectionpoints(lbc[0], cb)[0];
point pbc0c = intersectionpoints(lbc[0], cc)[0];
draw(pbc0b -- pbc0c);
point pbc1b = intersectionpoints(lbc[1], cb)[0];
point pbc1c = intersectionpoints(lbc[1], cc)[0];
draw(pbc1b -- pbc1c);

label("$P$", pab, NW);
label("$Q$", pac, E);
label("$R$", pbc, S);

draw(A -- B -- C -- cycle, dashed);

draw(A -- pbc, red+dashed);
draw(B -- pac, red+dashed);
draw(C -- pab, red+dashed);

