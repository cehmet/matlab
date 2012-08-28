function dizi=yayma(giristr,maske)
    k=(length(maske)-1)/2;
    dizi=zeros(1,length(giristr));
    for i=1:length(giristr)
        m=1;
        for j=-k:k
            if (~(i+j)>0) || (i+j>length(giristr))
                dizi(i)=dizi(i)||(0); 
                m=m+1;
            else
            
                dizi(i)=dizi(i)||(maske(m)&& giristr(i+j));
                m=m+1;
            end
        end
    end
