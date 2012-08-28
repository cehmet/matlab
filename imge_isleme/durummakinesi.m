function yeni=durummakinesi(I,maske)
    yeni=zeros(size(I,2),1);
    for i=1:size(I,2)-4
        t=1
        for j=1:4
            t=t&(not(xor(I(i+j),maske(j))));
        end
        yeni(i)=t;
    end