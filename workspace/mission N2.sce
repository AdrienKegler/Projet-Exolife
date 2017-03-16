// Etape 1
// Convertion de l'image en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Formes.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Creation de l'element structurant
structurant = zeros(3,3);
structurant = [0,255,0;255,255,255;0,255,0];

// Etape 4
// Erosion de l'image
image_1 = erosion(img_in,structurant,2,2);

// Etape 5
// Dilation de l'image
image_out = dilatation(image_1,structurant,2,2);

// Etape 6
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 7
// Enregistrer la matrice sous forme d'image
//writepbm (image_out,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_N2.pbm");
