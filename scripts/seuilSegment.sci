function sortie = seuilSegment(matrice,seuilA,seuilB,seuilC)
    
img_in = matrice;

SizeX = size(img_in,"r");
SizeY = size(img_in,"c");
sortie = zeros(SizeX,SizeY);

for i = 1:SizeX,
    for j = 1:SizeY,
        if img_in(i,j) <= seuilA then
            sortie(i,j) = 0;
        elseif img_in(i,j) <= seuilB then
            sortie(i,j) = 85;
        elseif img_in(i,j) <= seuilC then
            sortie(i,j) = 170;
        else
            sortie(i,j) = 255;
        end,
    end;
end;


endfunction
