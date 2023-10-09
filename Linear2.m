syms x y z;

eqn1 = 3*x + 0*y - 9*z == 33;
eqn2 = 7*x - 4*y - z == -15;
eqn3 = 4*x + 6*y + 5*z == -6;

solve = solve(eqn1, eqn2, eqn3), [x; y; z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z