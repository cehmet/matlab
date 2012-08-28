function stdort=video(video)
    kare_sayisi=size(video,2);
    kareler={};
    for i=1:kare_sayisi
        kareler{i}=rgb2gray(frame2im(video(i)));
    end
    [R C]=size(kareler{1});
    piksel=[];
    stdort=cell(R,C);
    for r=1:R
        for c=1:C
            for i=1:kare_sayisi
                piksel(i)=kareler{1}(r,c);
            end
            stdort{r,c}=[mean(piksel) std(piksel)];
        end
 
                