function [avg , var ,mode , mean, min , max] = q4(x)
    if ~isvector(x)
        error('Input must be a vector')
    end
    sorted = sort(x);
    tempmax = 1;
    max = 0;
    i = 1;
    while(i~=length(sorted))
    if(sorted(i) == sorted(i+1))
        tempmax =tempmax + 1;
    else
        if( tempmax > max )
        max = tempmax;
        index = i;
        end
        tempmax = 1;
    end
    i = i + 1;
    end
    
    mode = sorted(index);
    
    sort(x);
    if( mod ( length(x), 2) == 1 )
        mean = x((length(x)+1)/2);
    else
        mean = (x(length(x)/2) + x((length(x)/2)+1))/2; 
    end
    
    min = sorted(1);
    max = sorted(length(x)-1);
    avg = sum(x)/length(x); 
    var = sum((x - average(x)).^2);   
end