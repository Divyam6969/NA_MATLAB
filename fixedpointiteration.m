clc
clear all
f=@(x)(x-x^3 - 4*x^2 +10);
a=1;
b=2;
x0= (a+b)/2;
x1= f(x0);
while(abs(x1-x0)>=0.001)
    x0=x1;
    x1=f(x0);
end
x1