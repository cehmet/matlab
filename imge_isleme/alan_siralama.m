function [y,sira]=alan_siralama(I)
    I=im2bw(I);
    I=imfill(I,'holes');
    bw=bwlabel(I);
    S=regionprops(bw,'Area');
    alan=[S.Area];
    c=struct2cell(S);
    mat=cell2mat(c);
    sira=sort(mat,'descend');
    for i=1:length(sira)
        y(i)=find(alan==sira(i));
    end
    