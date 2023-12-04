A = [-6, 3; 4, 5]
disp(A)

[ev, dv] = eig(A)

t = A * ev(:,1)

u = -7 * ev(:,1)

v = A * ev(:,2)

w = 6 * ev(:,2)
