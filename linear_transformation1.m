syms x y;
eq1 = 4*x + 3*y == 20;
eq2 = -5*x + 9*7 == 26;
eq1;
eq2;
[eq1, eq2] = equationsToMatrix([eq1, eq2], [x, y]);
eq1;
eq2;
c = linsolve(eq1, eq2);
c