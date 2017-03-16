
//Load Picture
path_name =("D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\U2_surface.pbm");
img_in = readpbm(path_name);

//X & Y Convolution
Conv_X = ConvolutionX_sobel(img_in);
Conv_Y = ConvolutionY_sobel(img_in);

//Combinate X & Y Convolution
img_out = Convolution(Conv_X, Conv_Y);

//Normalisation
histo = histogramme(img_out);

normalisation(img_out, min_histo(histo), max_histo(histo));

Seuil(img_out, 104);

display_gray(img_out);
