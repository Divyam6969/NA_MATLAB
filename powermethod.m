% Power Method Algorithm

n=input('Enter dimension of the matrix, n:  ');
A = zeros(n,n);
x = zeros(1,n);
y = zeros(1,n);
tol = input('Enter the tolerance, tol: ');
m = input('Enter maximum number of iterations, m:  ');


A=[1 2 0; -2 1 2; 1 3 1];
x=[1 1 1];



k = 1; lp = 1;
amax = abs(x(1));
for i = 2 : n
   if abs(x(i)) > amax
       amax = abs(x(i));
       lp = i;

   end
end 
for i = 1 : n
   x(i) = x(i)/amax;
 end 

fprintf('\n\n  Ite.    Eigenvalue     ............Eigenvectores............\n');
while k <= m 

     for i = 1 : n
        y(i) = 0;
        for j = 1 : n
          y(i) = y(i) + A(i,j) * x(j);
        end
     end
     ymu = y(lp);
     lp = 1;
     amax = abs(y(1));

     for i = 2 : n
        if abs(y(i)) > amax
           amax = abs(y(i));
           lp = i;
        end
     end
     if amax <= 0
        fprintf('0 eigenvalue - select another ');

        fprintf('initial vector and begin again\n');
     else
          err = 0;
          for i = 1 : n
             t = y(i)/y(lp);
             if abs(x(i)-t) > err
               err = abs(x(i)-t);
             end

             x(i) = t;
          end
          fprintf('%4d     %11.8f', k, ymu);
          for i = 1 : n
            fprintf('   %11.8f', x(i));
          end

          fprintf('\n');
          if err <= tol
             fprintf('\n\nThe eigenvalue after %d iterations is: %11.8f \n',k, ymu);
             fprintf('The corresponding eigenvector is: \n');
             for i = 1 : n

                fprintf('                                 %11.8f \n', x(i));
             end
             fprintf('\n');
             break;
          end
          k = k+1;

      end
end
if k > m
fprintf('Method did not converge within %d iterations\n', m);
end