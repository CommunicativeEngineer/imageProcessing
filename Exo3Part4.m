x = imread('pout.tif');
figure(1); imshow(x);
y=fft2(x);
ymod = abs(fftshift(y));
figure(2); imshow(log(ymod),[]);

%l'image est assez nette, mais le contraste des couleurs est assez petit.
%Les lignes des contours ne sont pas axes sur le meme sens mais sont
%majoritairement horizentaux et verticaux