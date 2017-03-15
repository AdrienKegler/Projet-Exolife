function img_out = EgalisationK(matrice)

//Step 1 - Initialisation
SizeX =  size(matrice, "r");
SizeY = size(matrice, "c");
img_out = zeros(SizeX, SizeY);
hist_in = HistogrammeCummule(matrice);
correspondance = zeros(1, 256);
CoDi = SizeX * SizeY/256;
y = 0;
z = 0;

for i= 1:256
    while z=0, if hist_in(i) <=  y*CoDi | hist_in(i) == 0 then z = 1;  else y = y+1; end, disp(hist_in(i)) , end
    correspondance(i) = y;
    y = 0
    z = 0
end

disp(correspondance)


for j= 1:SizeX
    for k = 1:SizeY
        img_out(j,k) = correspondance(matrice(j,k)+1)
    end;
end;


endfunction
