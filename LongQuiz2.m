disp("1.) Matrix A")
A = [1, 2, 3; 4, 5, 6; 7, 8, 9]
disp("A^T")
A ^ 3
disp("A + A")
A + A
disp("A * A")
A * A
disp("Determinant of A")
det(A)
disp(" ")
disp("2.) Matrix B")
B = [2, 3; 5, 6; 8, 9]
disp("Dimension of Matrix")
size(B)
disp("Change element B32 to 0")
zeros(3, 2)
disp(" ")
disp("Solve systems of linear equations")
C = [5 4 1
     10 9 4
     10 13 15];
D = [3.4
     8.8
     19.2];
msize = length(C);
low = eye(msize);
up = zeros(size(C));
up(1,:)= C(1,:);
low(2:end,1) = C(2:end,1) / up(1,1);
for k = 2:msize
    up(k,k:end) = C(k,k:end) - low(k,1:k-1) * up(1:k-1, k:end);
    low(k+1:end,k) = (C(k+1:end,k) - low(k+1:end,1:k-1) * up(1:k-1,k)) / up(k,k);
end
up
low
Y = zeros(msize,1);
Y(1) = D(1);

for row = 2:msize
    Y(row) = D(row) - low(row,1:row-1) * Y(1:row-1);
end
Y
X = zeros(msize, 1);
X(msize) = Y(msize) / up(msize,msize);
for row = msize-1:-1:1
    X(row) = (Y(row) - up(row,row+1:end) * X(row+1:end)) / up(row,row);
end
X