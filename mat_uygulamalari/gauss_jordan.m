function cozum=gauss_jordan()

A=input('KATSAYILAR MATRÝSÝ A=');
B=input('SABÝTLER MATRÝSÝ B =');
N=length(A);
A=[A -B] ;                                   %Burada homojen denklem sistemne dönüþtürmek için LDS'nin sabitler matrisi -1 
                                             %ile çarpýlýp katsayýlar matrisine eklenir.Bu eklenen vektörlerle katsayýlar matrisi geniþletilmiþ 
                                             %olur ve yeni bir bilinmeyen eklenmiþ gibi iþlem görür.
                                             %SABÝTLERmatrisi ise homojen denklem sistemine dönüþtürdüðümüz için elemanlarý 0 olan bir vektördür.
                                             % Sabitler matrisi B Katsayýlar matrisi A'ya yeni bir sutun olarak eklendi. 
S=zeros(size(A,1),1)                         % Sifir matrisi atamasi 

for i=1:N                                    %satýr sayýsý
k=i+1;
for j=k:N                                   %her sutun için sýfýr  yapýlacak  eleman sayýsý kadar dongu
A(j,:)=A(j,:)-(A(j,i)*A(i,:))/A(i,i)        %alt ucgensel matrise dönusturme
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
    A(j,:)=A(j,:)/A(j,j);                   % Birim matrise donusturen kýsým
    if A(j,j)==1
        n=n+1;                              %Rank deðerini bulma
    end
end
A
fprintf('Sistemin ranký %d bulunur.\n',n);

if  size(A,2)>n                             %Bilinmeyen saysý, rank deðerinden küçükse buraya gir.Parametreli sonzu çözüm vardir
    fprintf('%d parametreye bagli sonsuz cozum vardir.\n',size(A,2)-size(A,1)); 
    return;
    
else
    fprintf('Sifir cozumu elde edilir.Bilinmeyenlerin hepsi sifirdir.\n');
    for k=1:N
          X(k)=S(k);                        % kokleri bulan kýsým.Zaten rank, A matrisinin satýr sayýsýna eþitsse koklerin hepsi sýfýr olacak.
    end
end                                         % deðilse parametreye baðlý sonsuz cozum else edilir


for n=1:N
eval(['X',int2str(n),'=X(n)'])
end                                         % kokleri yazdýrma

cozum=X;