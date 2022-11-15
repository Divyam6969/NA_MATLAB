clc
clear all
format long
f = @(x) (x^2 - 17);
a=1;
b=2;
n=6;%number of decimal places
for(i=1:1:100)
        if((f(i)*f(i+1))<=0)
            a=i;
            b=i+1;
            break;
        end
end
tolerance = (10^(-n));

fprintf("a b c\n")
c = (a+b)/2;
while(abs(b-a)>=tolerance)
    
    
    fprintf("%f %f %f\n",a,b,c)
    if((f(a)*f(c)) < 0)
        b=c;
    else
        a=c;
    end
    c = (a+b)/2;
end
fprintf("Root is=")
c
fprintf("Number of iterations are=")
p = (abs(round((log(b-a)-log(c)))/log(2)))





