clear, close all

% 1. Завантажив зображення з бібліотеки
a = imread('peppers.png');
b = imread('football.jpg');
c = imread('trees.tif');

figure (name='Image');
subplot(1,3,1), imshow(a), title('Зображення 1, PNG');
subplot(1,3,2), imshow(b), title('Зображення 2, JPG');
subplot(1,3,3), imshow(c), title('Зображення 3, TIF');

% 2. Завантажити зображення, що зберігається в довільному каталозі
d = imread('img\1.jpg');
e = imread('img\2.png');

% 3. Одержав інформацію про завантажені зображення
whos a, whos b, whos c, whos d, whos e;

% 4. Зберіг зображення в заданому каталозі
imwrite(a, 'save\a1.png');
imwrite(b, 'save\b1.jpg');
imwrite(c, 'save\c1.tif');
imwrite(d, 'save\d1.jpg');
imwrite(e, 'save\e1.png');

% 5. Відобразив гістограми розподілу яскравостей
figure (name='Histogram');
subplot(5,2,1), imshow(a), title('Зображення 1');
subplot(5,2,2), imhist(a), title('Гістрограма 1');
subplot(5,2,3), imshow(b), title('Зображення 2');
subplot(5,2,4), imhist(b), title('Гістрограма 2');
subplot(5,2,5), imshow(c), title('Зображення 3');
subplot(5,2,6), imhist(c), title('Гістрограма 3');
subplot(5,2,7), imshow(d), title('Зображення 4');
subplot(5,2,8), imhist(d), title('Гістрограма 4');
subplot(5,2,9), imshow(e), title('Зображення 5');
subplot(5,2,10), imhist(e), title('Гістрограма 5');
% figure, imshow(a), figure, imhist(a);
% figure, imshow(b), figure, imhist(b);
% figure, imshow(c), figure, imhist(c);
% figure, imshow(d), figure, imhist(d);
% figure, imshow(e), figure, imhist(e);

% 6. Виконав контрастування зображень, використав конвертацію у відтінки сірого 
contrast_a = imadjust(rgb2gray(a));
contrast_b = imadjust(rgb2gray(b));
contrast_c = imadjust(c);
contrast_d = imadjust(rgb2gray(d));
contrast_e = imadjust(rgb2gray(e));

% 7. Відобразив зображення з підвищеною контрастністю
figure (name='Contrast');
subplot(2,3,1), imshow(contrast_a), title('Зображення 1');
subplot(2,3,2), imshow(contrast_b), title('Зображення 2');
subplot(2,3,3), imshow(contrast_c), title('Зображення 3');
subplot(2,3,4), imshow(contrast_d), title('Зображення 4');
subplot(2,3,5), imshow(contrast_e), title('Зображення 5');
% figure, imshow(contrast_a);
% figure, imshow(contrast_b);
% figure, imshow(contrast_c);
% figure, imshow(contrast_d);
% figure, imshow(contrast_e);

% 8. Відобразив негатив зображень
figure (name='Negative');
subplot(2,3,1), imshow(imadjust(a,[0,1],[1,0],1.5)), title('Зображення 1');
subplot(2,3,2), imshow(imadjust(b,[0,1],[1,0],1.5)), title('Зображення 2');
subplot(2,3,3), imshow(imadjust(c,[0,1],[1,0],1.5)), title('Зображення 3');
subplot(2,3,4), imshow(imadjust(d,[0,1],[1,0],1.5)), title('Зображення 4');
subplot(2,3,5), imshow(imadjust(e,[0,1],[1,0],1.5)), title('Зображення 5');
% figure, imshow(imadjust(a,[0,1],[1,0],1.5));
% figure, imshow(imadjust(b,[0,1],[1,0],1.5));
% figure, imshow(imadjust(c,[0,1],[1,0],1.5));
% figure, imshow(imadjust(d,[0,1],[1,0],1.5));
% figure, imshow(imadjust(e,[0,1],[1,0],1.5));

% 9. Детальніше ознайомився з особливостями процедури imadjust
help imadjust