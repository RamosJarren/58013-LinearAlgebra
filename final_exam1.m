syms x y z;

eqn1 = 3*x - y + z == 5;
eqn2 = 9*x - 3*y + 3*z == 15;
eqn3 = -12*x + 4*y - 4*z == -20;

solve = solve(eqn1, eqn2, eqn3), [x; y; z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z