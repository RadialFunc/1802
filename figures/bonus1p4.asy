size(4cm);
for (int i=0; i<2; ++i) {
for (int j=0; j<3; ++j) {
draw(shift(i,j)*unitsquare, grey);
}
}
draw((0,0)--(2,3), red, EndArrow);
label("$\mathbf{v}$", (2,3), dir(45), red);
draw((0,0)--(1,0), blue, EndArrow);
draw((0,0)--(0,1), blue, EndArrow);
label("$\mathbf{a}$", (1,0), dir(-90), blue);
label("$\mathbf{b}$", (0,1), dir(180), blue);