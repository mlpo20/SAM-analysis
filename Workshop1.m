%Workshop 1


clc

for x = 1:125
    for y = 1:125
        Y = num2str(y,'%03d');
        X = num2str(x,'%03d');
        data = csvread(['data/','X',X,'Y',Y,'.csv']);
        
        z(x,y) = max(data);
    end
end

surf(z)