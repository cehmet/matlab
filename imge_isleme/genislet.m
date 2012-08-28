function yeni=genislet(I,maske)
    [R C]=size(I);
    yeni=zeros(R,C);
    mort=(size(maske,1)+1)/2;
    for x=mort:R-mort+1
        for y=mort:C-mort+1
            gecici=I(x-mort+1:x+mort-1,y-mort+1:y+mort-1) & maske;
            if gecici(gecici==1)
                yeni(x,y)=1;
            else
                yeni(x,y)=0;
            end
         end
    end
    
           
            