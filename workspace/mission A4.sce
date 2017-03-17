// Etape 1
// Convertion des images en matrice
path1_name = 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Jupiter1.pbm';
path2_name = 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Jupiter2.pbm';

image_1 = readpbm(path1_name);
image_2 = readpbm(path2_name);


// Etape 2
// Affichage de l'image 1 de base
figure;
display_gray(image_1);

// Etape 3
// Affichage de l'image 2 de base
figure;
display_gray(image_2);

// Etape 4
// Soustraction des images afin d'enlever du bruit
image_3 = soustraction(image_1,image_2);
image_4 = soustraction(image_1,image_3);

// Etape 5
// Application d'un filtre median afin d'enlever tout le bruit
image_out = filtre_median(image_4);

// Etape 6
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 7
// Enregistrer la matrice sous forme d'image
writepbm (image_out,"D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\mission_A4.pbm");
