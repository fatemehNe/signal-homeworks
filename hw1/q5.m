[y,Fs] = audioread('sound.mp3');
Fs = 100000;
sound(y,Fs);

rightData = y(:,1);
leftdata = y(:,2);
t = 0 : 1/44100 : length(y)/44100 - (1/44100) ;

figure(1);
plot(t, rightData);
figure(2);
plot(t,leftdata);


len = length(y);
fadePoint = int32(len * 7 / 10);

for i = drange(fadePoint : len)
    coef = (len - i) / (len - fadePoint);
    rightData(i) = rightData(i) * coef;
    leftdata(i) = leftdata(i) * coef;
end
sound(y, 44100);

save('result.mat', 'y');