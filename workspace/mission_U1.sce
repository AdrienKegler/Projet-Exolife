// Etape 1
// Convertion de l'image en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\U1_surface.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Convolution avec filtre de sobel
image_x = ConvolutionX_sobel(img_in);
image_y = ConvolutionY_sobel(img_in);
image_out = Convolution(image_x,image_y);

// Etape 4
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 5
// Enregistrer la matrice sous forme d'image
writepbm (image_out,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_U1.pbm");
