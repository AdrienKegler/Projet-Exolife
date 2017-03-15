// fonction de soustraction

// chargement des images

// for d'analyse de pixels, soustraction
function sous=soustraction(matriceA,matriceB)
    
    img_inA = matriceA;
    img_inB = matriceB;
    
    SizeXa = size(matriceA,"r");
    SizeYa = size(matriceA,"c");
    
    SizeXb = size(matriceB,"r");
    SizeYb = size(matriceB,"c");
    
        img_out = zeros(SizeXa,SizeYa);
    
    for i = 1:SizeXa
        for j = 1:SizeYa
                if j > SizeYb | i > SizeXb then
                    img_out(i,j) = img_inA(i,j);
                else
                difference = img_inA(i,j)-img_inB(i,j);
                     if difference < 0 then
                          img_out(i,j) = 255;
                     else
                          img_out(i,j) = difference;
                     end,
                end,
        end;    
    end;
    
    display_gray(img_out);
endfunction
