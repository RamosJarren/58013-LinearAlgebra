syms x y;
eq1 = 20*x + 10*y == 350;
eq2 = 17*x + 22*y == 500;
[eq1,eq2] = equationsToMatrix([eq1,eq2],[x,y]);
c = linsolve(eq1,eq2);
c

plot(eq1,eq2);
grid on;
xlabel('x-axis');
ylabel('y-axis');
legend('Data points');
hold on;
plot(eq1,eq2);
plot(eq1,eq2,'*')
title('Linear Application');