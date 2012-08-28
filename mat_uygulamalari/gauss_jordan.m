function cozum=gauss_jordan()

A=input('KATSAYILAR MATR�S� A=');
B=input('SAB�TLER MATR�S� B =');
N=length(A);
A=[A -B] ;                                   %Burada homojen denklem sistemne d�n��t�rmek i�in LDS'nin sabitler matrisi -1 
                                             %ile �arp�l�p katsay�lar matrisine eklenir.Bu eklenen vekt�rlerle katsay�lar matrisi geni�letilmi� 
                                             %olur ve yeni bir bilinmeyen eklenmi� gibi i�lem g�r�r.
                                             %SAB�TLERmatrisi ise homojen denklem sistemine d�n��t�rd���m�z i�in elemanlar� 0 olan bir vekt�rd�r.
                                             % Sabitler matrisi B Katsay�lar matrisi A'ya yeni bir sutun olarak eklendi. 
S=zeros(size(A,1),1)                         % Sifir matrisi atamasi 

for i=1:N                                    %sat�r say�s�
k=i+1;
for j=k:N                                   %her sutun i�in s�f�r  yap�lacak  eleman say�s� kadar dongu
A(j,:)=A(j,:)-(A(j,i)*A(i,:))/A(i,i)        %alt ucgensel matrise d�nusturme
end
end

for i=N:-1:1
k=i-1;
for j=k:-1:1
    A(j,:)=A(j,:)-(A(j,i)*A(i,:))/A(i,i)    % ust ucgensel matrise donusturme
end
end
n=0;
for j=1:N
    A(j,:)=A(j,:)/A(j,j);                   % Birim matrise donusturen k�s�m
    if A(j,j)==1
        n=n+1;                              %Rank de�erini bulma
    end
end
A
fprintf('Sistemin rank� %d bulunur.\n',n);

if  size(A,2)>n                             %Bilinmeyen says�, rank de�erinden k���kse buraya gir.Parametreli sonzu ��z�m vardir
    fprintf('%d parametreye bagli sonsuz cozum vardir.\n',size(A,2)-size(A,1)); 
    return;
    
else
    fprintf('Sifir cozumu elde edilir.Bilinmeyenlerin hepsi sifirdir.\n');
    for k=1:N
          X(k)=S(k);                        % kokleri bulan k�s�m.Zaten rank, A matrisinin sat�r say�s�na e�itsse koklerin hepsi s�f�r olacak.
    end
end                                         % de�ilse parametreye ba�l� sonsuz cozum else edilir


for n=1:N
eval(['X',int2str(n),'=X(n)'])
end                                         % kokleri yazd�rma

cozum=X;