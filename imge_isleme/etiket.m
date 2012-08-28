function I =etiket(I)
    [R,C]=size(I);
    I=im2bw(I);
    %I=imfill(I,'holes');
    I=double(I);
    label=2;
    for x=1:R
        for y=1:C
            if (x==1 && y==1 && I(x,y)==1)
                I(x,y)=label;
                label=label+1;
            elseif y==1 && I(x,y)==1
                  if I(x-1,y)>1
                     I(x,y)=I(x-1,y);
                  else 
                    I(x,y)=label;
                    label=label+1;
                  end
            elseif x==1 && I(x,y)==1  
                   if I(x,y-1) > 1
                       I(x,y)=I(x,y-1);
                   else 
                       I(x,y)=label;
                       label=label+1;
                   end  
            else 
                  if I(x,y)==1
                      if I(x-1,y)>1 && I(x,y-1)>1
                            if I(x,y-1) >= I(x-1,y)
                                I(x,y)=I(x-1,y);
                                I(I==I(x,y-1))=I(x-1,y);
                            else
                                I(x,y)=I(x,y-1);
                                I(I==I(x-1,y))=I(x,y-1);
                            end
                      elseif I(x-1,y)>1
                              I(x,y)=I(x-1,y);
                      elseif I(x,y-1) >1
                              I(x,y)=I(x,y-1)
                      else 
                          I(x,y)=label;
                          label=label+1;
                      end
                      
                  end
            end
        end
    end
    
    
   E=unique(I(:));
    for i=2:length(E)
        I(I==E(i))=i-1;
    end






       

