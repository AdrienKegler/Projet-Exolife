
//Load Picture
path_name =("D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\U2_surface.pbm");


img_in = readpbm(path_name);
histo = histogramme(img_in);

histo_cum = HistogrammeCummule(img_in);
img_out = egalisation(img_in, histo_cum);


//X & Y Convolution
Conv_X = ConvolutionX_sobel(img_in);
Conv_Y = ConvolutionY_sobel(img_in);

//Combinate X & Y Convolution
img_out = Convolution(Conv_X, Conv_Y);


//1er Seuillage
img_out = Seuil(img_out, 80);

//"Débruitage" poue enlever un maximum d'étoiles
img_out = filtre_moyenneur(img_out);

//Re-seuillage pour un résultat binaire
img_out = Seuil(img_out, 80);

display_gray(img_out);

writepbm(img_out, "..\images\U2.pbm");
