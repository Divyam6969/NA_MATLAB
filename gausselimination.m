C = [1 2 -1; 2 1 -2; -3 1 1]
b= [3 3 -6]'
A = [C,b];    

[R,C]= size(A);
for i=1:R-1
    for j = i+1:R
        fprintf("Multiply row %i with %0.3f and subtract from row %d",j,A(i,j)/A(j,j),i)
        A(i,j:C)=A(i,j:C)-(A(i,j)/A(j,j))*A(j,j:C)
    end
end
 %Back substitution
 x= zeros(R,1);
 x(R)= A(R,C)/A(R,R)
 for i = R-1:-1:1
     x(i)=A(i,C)- (A(i,i+1:R)*x(i+1:R))/A(i,i)
 end
