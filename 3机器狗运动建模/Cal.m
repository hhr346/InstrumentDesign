syms h0 h1 h2
syms alpha beta gamma
syms x y z

R=[cos(alpha) sin(alpha) 0;(-sin(alpha)) cos(alpha) 0;0 0 1];
A=[x-h0*cos(alpha);y-h0*sin(alpha);z];
B=simplify(R*A);
xd = B(1);
yd = B(2);
zd = B(3);
b=symdisp(pi-acos((h1^2+h2^2-(yd^2+zd^2))/(2*h1*h2)));
