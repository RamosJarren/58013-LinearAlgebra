A = [1 1 1
     1 2 2
     1 2 3];

B = [5
     6
     8];

msize = length(A);
low = eye(msize);
up = zeros(size(A));

up(1,:)= A(1,:);
low(2:end,1) = A(2:end,1) / up(1,1);

for k = 2:msize
    up(k,k:end) = A(k,k:end) - low(k,1:k-1) * up(1:k-1, k:end);
    low(k+1:end,k) = (A(k+1:end,k) - low(k+1:end,1:k-1) * up(1:k-1,k)) / up(k,k);
end

up
low

% LY = B
Y = zeros(msize,1);
Y(1) = B(1);

for row = 2:msize
    Y(row) = B(row) - low(row,1:row-1) * Y(1:row-1);
end

Y

% UX = Y
X = zeros(msize, 1);
X(msize) = Y(msize) / up(msize,msize);

for row = msize-1:-1:1
    X(row) = (Y(row) - up(row,row+1:end) * X(row+1:end)) / up(row,row);
end

X