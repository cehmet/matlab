function C = hizlandir(A, B, nmin)
% fonksiyon giri� arg�man� say�s� 3 ten k���kse 
%yani nmin atamas� yap�lmam��sa varsay�lan olarak nmin'i 8 yap
if nargin < 3, nmin = 8; end 
n = length(A);
%e�er A ve B matrisleri sat�r ve s�tun say�lar� tek say� ise;
%A ve B matrislerine bir s�f�r sat�r� ve bir s�f�r s�tunu eklenir.
%Boylece i�lemler sonucu de�i�mez.
if n ~= 2^( log2(n) )

   A(n+1,:)=zeros(1,n);
   A(:,n+1)=zeros(1,n+1);
   B(n+1,:)=zeros(1,n);
   B(:,n+1)=zeros(1,n+1);
end

%tekrar �a�r�lan(�zyineli) fonksiyonu durdurma kosulu
%%
%%
if n <= nmin
   C = A*B;
else
   %Burada fonksiyonlar n ,nminden kucuk olmad�� s�rece tekrar tekrar �a�r�l�rlar 
   fprintf('%d',n)
   m = n/2; i = 1:m; j = m+1:n;
   P1 =  hizlandir( A(i,i)+A(j,j), B(i,i)+B(j,j), nmin);
   P2 =  hizlandir( A(j,i)+A(j,j), B(i,i), nmin);
   P3 =  hizlandir( A(i,i), B(i,j)-B(j,j), nmin);
   P4 =  hizlandir( A(j,j), B(j,i)-B(i,i), nmin);
   P5 =  hizlandir( A(i,i)+A(i,j), B(j,j), nmin);
   P6 =  hizlandir( A(j,i)-A(i,i), B(i,i)+B(i,j), nmin);
   P7 =  hizlandir( A(i,j)-A(j,j), B(j,i)+B(j,j), nmin);
   C = [ P1+P4-P5+P7  P3+P5;  P2+P4  P1+P3-P2+P6  ];
end
%s�f�r 
C=C(1:n,1:n);
