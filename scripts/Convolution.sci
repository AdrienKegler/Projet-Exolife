function image_out=Convolution(image_x,image_y)
    

SizeX = size(image_x,"r");
SizeY = size(image_y,"c");

// création d'un tableau de zeros
image_out = zeros(SizeX,SizeY);
// for chaque pixels 
for i = 1:SizeX,
    for j = 1:SizeY
        image_out(i,j)= sqrt(image_x(i,j)*image_x(i,j)+image_y(i,j)*image_y(i,j));
    end;        
end;


endfunction

