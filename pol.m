function dy = pol(t,y,k)

dy = zeros(3,1);
A = [1 1 1 1 0];
C0 = 2.15;
eps = 10e-4;
% y(1) = F(t)
% y(2) = C(t)
% y(3) = J(t)
dy(1) = A(1) * y(3) * y(1) - A(2) * y(2);
dy(2) = A(3) * y(3) + A(4) * y(1) * y(2) + A(5)*y(3)^2;
dy(3) = -(y(3)^3  - (y(2) - C0)*y(3) - y(1))/eps;

