A= [1 -3 -2;2 -4 -3;-3 6 8]
B=[6;8;5]
[L U]=lu(sym(A))
inverseL = adjoint(L)/det(L)
Y = inverseL * B
inverseU = adjoint(U)/det(U)
X = inverseU * Y