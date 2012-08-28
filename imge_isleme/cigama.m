function v=cigama(g,aralik,gama)
    
    son(1) = aralik(1)^gama(1);
    son(2) = son(1) + (aralik(2)-aralik(1))^gama(2);
    
    if g > aralik(1)
        if g > aralik(2)
            v = round(son(2) + (g-aralik(2))^gama(3));
        else
            v = round(son(1) + (g-aralik(1))^gama(2));
        end
    else
        v = round(g^gama(1));
    end
    v = uint8(v); 
    
            
       