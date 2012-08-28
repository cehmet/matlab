function [L, U]=LU_Factor(A)
n=size(A,1);
L=eye(n);
U=A;
for j=1:n-1
    for i=j+1:n
        L(i,j)=U(i,j)/U(j,j);
        U(i,:)=U(i,:)-L(i,j)*U(j,:);
    end
end
%[L U]=LU_Factor([30 20 10;20 55 10;10 10 50])
%b=[0;80;0];

