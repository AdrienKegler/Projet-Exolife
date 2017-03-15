function finaltable= HistogrammeCummule(matrice)


SizeX =  size(matrice, "r");
SizeY = size(matrice, "c");
table = zeros(1,256);
finaltable = zeros(1,256);

//Partie 2 - Loop

for i = 1:SizeX,
    for j = 1:SizeY,
        table(matrice(i,j)+1) = table(matrice(i,j)+1) +1
    end;
end;

disp(table);

for i = 1:256
    if i>1 then
       finaltable(i) = table(i) +finaltable(i-1);
   else
       finaltable(i) = table(1)
    end,
end;

disp(finaltable);
figure;
plot(finaltable);

endfunction
