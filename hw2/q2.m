f=1;
k = 2 ; %window = 5
for i=k+1 : 4000-k-1

    medianfiltered(i) = median(origSignal(i-k:i+k));
end
    
figure(f);
f=f+1;
plot (medianfiltered)
title('median filter')


k = 5 ; %window = 10
for i=k+1 : 4000-k-1

    medianfiltered(i) = median(origSignal(i-k:i+k));
end
    
figure(f);
f=f+1;
plot (medianfiltered)
title('median filter')

k = 50 ; %window = 100
for i=k+1 : 4000-k-1

    medianfiltered(i) = median(origSignal(i-k:i+k));
end
    
figure(f);
f=f+1;
plot (medianfiltered);
title('median filter');

sigma = 5;
sz = 30;    % length of gaussFilter vector
x = linspace(-sz / 2, sz / 2, sz);
gaussFilter = exp(-x .^ 2 / (2 * sigma ^ 2));
gaussFilter = gaussFilter / sum (gaussFilter); % normalize
gFiltered = filter(gaussFilter , 1 ,origSignal);

figure(f);
f=f+1;
plot (gFiltered);
title('gaussian filter');

sigma = 10;
sz = 80;    % length of gaussFilter vector
x = linspace(-sz / 2, sz / 2, sz);
gaussFilter = exp(-x .^ 2 / (2 * sigma ^ 2));
gaussFilter = gaussFilter / sum (gaussFilter); % normalize
gFiltered = filter(gaussFilter , 1 ,origSignal);

figure(f);
f=f+1;
plot (gFiltered);
title('gaussian filter');

sigma = 20;
sz = 120;    % length of gaussFilter vector
x = linspace(-sz / 2, sz / 2, sz);
gaussFilter = exp(-x .^ 2 / (2 * sigma ^ 2));
gaussFilter = gaussFilter / sum (gaussFilter); % normalize
gFiltered = filter(gaussFilter , 1 ,origSignal);

figure(f);
f=f+1;
plot (gFiltered);
title('gaussian filter');

gausfiltered = conv (origSignal, gaussFilter, 'same');

figure(f);
f=f+1;
plot (gFiltered);
title('gaussian filter');

med = conv (origSignal, medianfiltered, 'same');

figure(f);
f=f+1;
plot (med);
title('median filter');