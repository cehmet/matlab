function merkez=merkez_bulma(I,maske)
    I=im2bw(I);
    asinma=imerode(I,maske);
    label=bwlabel(asinma);
    merkezler=regionprops(label,'Centroid');
    etiket_sayisi=unique(label);
    etiket_sayisi=etiket_sayisi(:);
    for i=1:length(etiket_sayisi)
        
        merkez{i}=merkezler(i).Centroid;
    end
    
    