I=imread('coins.png');
function b = rehist(I)

for i = 0:255
    b(i+1) = length(find(I == i));
end 
bar(b)
