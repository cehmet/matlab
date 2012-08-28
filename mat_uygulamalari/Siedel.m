function x=Siedel(A,b,xbas,tol,max_it)
n=size(A,1);
x=xbas;
C=-A;
for i=1:n
    C(i,i)=0;
end
for i=1:n
    C(i,:)=C(i,:)/A(i,i);
end
for i=1:n
    r(i)=b(i)/A(i,i);
end
i=1;
while(i<=max_it)
    xold=x;
    for j=1:n
        x(j)=C(j,:)*x+r(j);
    end
    if abs(xold-x)<tol
        disp('Gauss-Seidel method ');
        return ;
    end
   
    i=i+1;
end

