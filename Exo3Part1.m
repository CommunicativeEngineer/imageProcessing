figure;
I = double(imread('eight.tif'));
imfft = fft2(I);
imfft = fftshift(imfft);
mag = abs(imfft);
phase = angle(imfft);
imagesc(log(1+mag));
figure;
contour(log(1+mag))

%%crée la transformée de fourrier de l'image eight.tif puis on extraie ll
%%extraie ensuite le module et l'angle. on affiche ensuite la transformee
%%ainsi que l'image contour

%L'image a des formes circulaires