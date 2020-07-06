clc,clear
syms t s 
a=[1,0,0;2,1,-2;3,2,1];fs=[0;0;exp(s)*cos(2*s)];
x0=[0;1;1];
tx=int(expm(a*(t-s))*fs,s);
xstar=subs(tx,s,t)-subs(tx,s,0);
x=expm(a*t)*x0+xstar;
x=simple(x),pretty(x)