syms x y z;

eqn1 = x + y + z == 5;
eqn2 = x + 2*y + 2*z == 6;
eqn3 = x + 2*y + 3*z == 8;

solve = solve(eqn1, eqn2, eqn3), [x, y, z];

xsolve = solve.x
ysolve = solve.y
zsolve = solve.z