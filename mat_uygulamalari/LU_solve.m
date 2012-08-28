function x=LU_solve(L,U,b)
n=length(L); y=zeros(n,1); x=zeros(n,1);
%Ly=b cozme
z(1)=b(1);
for i=1:n
    y(i)=b(i)-L(i,1:i-1)*y(1:i-1);
end
%Ux=z cozme
x(n)=y(n)/U(n,n);
for i=n-1:-1:1
    x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
end


