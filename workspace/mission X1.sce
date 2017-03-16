//Chargement du fichier .dat sous forme de matrice de nombres complexes
load("C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Asellus Secundus.dat")

//Application de la transformation de Fourier Inversée

img_out = ifft(imgT);

//Afficher
display_gray(img_out);

//Save
writepbm(img_out,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_X1.pbm");
