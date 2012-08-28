function J = kyayma(I,aralik,gama)
    [R,C] = size(I);
    I = double(I);
    J = double(I);
    for x = 1: R
        for y = 1: C
            g = I(x,y);
            c = cigama(g, aralik, gama);
            J(x,y) = c;
        end
    end