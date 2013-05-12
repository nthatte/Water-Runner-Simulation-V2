function F = Force(y,theta,w1,w2,b,k,A,w,alpha)
%FORCE
%    F = FORCE(Y,THETA,W1,W2,B,K,A,W,ALPHA)

%    This function was generated by the Symbolic Math Toolbox version 5.9.
%    02-May-2013 21:12:10

t2 = sin(theta);
t3 = t2.*w;
t4 = A+t3-y;
t5 = 1.0./pi;
t6 = A.^2;
t7 = 1.0./A;
t8 = t4.*t7;
t9 = acos(t8);
t10 = pi-t9;
t11 = t4.^2;
t12 = t6-t11;
t13 = sqrt(t12);
F = real((k.*t5.*(w2+alpha.*w1).*(t13+t4.*t10).*(1.0./2.0))./w1+(b.*t5.*w1.*w2.*(w1-alpha.*w2).*(t6.*t10+t4.*t13).*(1.0./2.0))./(w1+w2));