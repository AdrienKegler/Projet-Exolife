//Chargement du fichier .dat sous forme de matrice de nombres complexes
load("D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Asellus Secundus.dat")

//Application de la transformation de Fourier Inversée

img_out = ifft(imgT);

//Afficher
display_gray(img_out);

//Save
writepbm(img_out);
