%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Student Name: 蕭楚澔
% Student ID: 0716026
% Email address: bobhsiao.cs07@nycu.edu.tw
% Department: Computer Science, NYCU
% Date: 2022-3-2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% problem 1.1
disp('Problem 1.1');
n = 10;
P = (-2*n):2:2*n

% problem 1.2
disp('Problem 1.2');
n = 10;
Q = meshgrid(1:n,1:n).^2

% problem 1.3
disp('Problem 1.3');
n = 10;
A = 1:n;
B = (-ones(1,n)).^(A+1);
R = B.*A

% problem 1.4
disp('Problem 1.4');
n = 10;
A = 1:n;
S = floor(A./2).*2+1

% problem 1.5
disp('Problem 1.5');
n = 10;
T = mod(-1:-1:-n,4)+1+(1:1:n)

% problem 2.1
r = 5;
[X,Y] = meshgrid(-r:0.1:r,-r:0.1:r);
Z = Y.*sin(X).*cos(X)./(abs(X)+eps);
figure
surf(X,Y,Z)
shading faceted
title('Problem 2.1')

% problem 2.2
X = 0:0.01:4;
e = exp(1);
y1 = X;
y2 = X.^2;
y3 = X.^3;
y4 = e.^X;
y5 = e.^-X;
y6 = log(X);
figure
plot(X,y1);
hold on; plot(X,y2);
hold on; plot(X,y3);
hold on; plot(X,y4);
hold on; plot(X,y5);
hold on; plot(X,y6);
title('Problem 2.2')

% problem 2.3
e = exp(1);
x1 = -10:0.5:10;
x2 = -10:0.001:10;
y1 = sin(x1)-x1;
z1 = sin(y1.^2)-(e.^x1./x1);
y2 = sin(x2)-x2;
z2 = sin(y2.^2)-(e.^x2./x2);
figure
plot(x1,z1,'o');
hold on; plot(x2,z2);
title('Problem 2.3')

% problem 2.4
[X,Y] = meshgrid(-10:0.5:10);
Z = (X+Y)./((X.^2)+(Y.^2)+1);
figure
meshc(X,Y,Z);
shading faceted
title('Problem 2.4');

% problem 2.5
e = exp(1);
X = -10:0.05:10;
y1 = 0.5+(X.*sin(X))./((X.^2).*(e.^sin(X))+1);
y2 = cos(X).^2+sin(X).^2;
figure
plot(X,y1);
hold on; plot(X,y2);
title('Problem 2.5');