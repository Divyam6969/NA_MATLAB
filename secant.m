clc
clear all
syms x;
f= @(x) x^2- 17;
h=1;
n=100;
a=0;
b=0;
for(i=1:h:n)
    if(f(i)*f(i+h)<=0)
        a=i;
        b=i+h;
        break;
    end
end
x0= ((a+b)/2);
x1 = x0 + 0.005;
x2= x1 - ((x1-x0)/(f(x1)-f(x0)))*f(x0);
while(abs(x1-x0)>=0.001)
    x0=x1;
    x1=x2;
    x2= x1 - ((x1-x0)/(f(x1)-f(x0)))*f(x0);
end
vpa(x2)
