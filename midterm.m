syms x y z;

eqn1 = 3*x - 5*y + 4*z == 5;
eqn2 = 5*x + 2*y + z == 0;
eqn3 = 2*x + 3*y - 2*z == 3;

solve = solve(eqn1, eqn2, eqn3), [x, y, z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z
