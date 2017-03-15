//fonction d'addition d'image

// chargment des  images

// for d'analyse de pixels addition

function add=addition(matriceA,matriceB)
    
    img_inA = matriceA;
    img_inB = matriceB;
    
    SizeXa = size(matriceA,"r");
    SizeYa = size(matriceA,"c");
    
    SizeXb = size(matriceB,"r");
    SizeYb = size(matriceB,"c");
    
    surfaceA = SizeXa * SizeYa;
    surfaceB = SizeXb * SizeYb;

        img_out = zeros(SizeXa,SizeYa);
    
    for i = 1:SizeXa
        for j = 1:SizeYa
                if j > SizeYb | i > SizeXb then
                    img_out(i,j) = img_inA(i,j);
                else
                somme = img_inA(i,j)+img_inB(i,j);
                     if somme > 255 then
                          img_out(i,j) = 255
                     else
                          img_out(i,j) = somme/2
                     end,
                end,
        end;    
    end;
    
    display_gray(img_out);
endfunction
