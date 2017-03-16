// Etape 1
// Convertion des images en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Europa_surface.pbm';
image_in = readpbm(path_name);


// Etape 2
// Affichage de l'image  de base
figure;
display_gray(image_in);


// Etape 3
// Seuil de l'image
image_1 = Seuil(image_in,250);

// Etape 4
// Application d'un filtre gaussien 
image_out = filtre_moyenneur(image_1);

// Etape 5
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 6
// Enregistrer la matrice sous forme d'image
writepbm (img_in,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_A3.pbm");
