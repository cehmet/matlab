function s = etiketsay(v)
etiketsayisi=max(max(v));
s=zeros(etiketsayisi,1);
for i=1:etiketsayisi
    s(i)=length(v(v==i));
    fprintf('%d numarali etikete sahip bolgede , %d piksel bulunmaktadir. \n',i,s(i));
end
s=sort(s(:),'descend');
fprintf('10 numarali etikete sahip bolgede , %d piksel bulunmaktadir. \n',s(10));
