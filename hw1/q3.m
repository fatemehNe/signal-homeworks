%% question 3 
%the M is 0.02
%

n = 0 : 1 : 100;
A = 5*cos(pi * n / 12);


for M = 0 : +0.001 : 1
    a = -( M + (M/2)*1i);
    x = A.*exp(a.*n);
    square =  x.^2;
    energy = sum(square);
    iterate = M;
    absEnergy = (real(energy) ^2 + imag(energy) ^2)^0.5;
    if(absEnergy < 300)
        figure(1);
        stem(n,real(x));
        figure(2);
        stem(n,imag(x));
        break;
    end
end

