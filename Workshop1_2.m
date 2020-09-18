
filename = "data/"


x_axis = 1:125;
y_axis = 1:125;

for x = x_axis(1): length(x_axis)
  
    x_value = "X" + num2str(x,'%03.f');

    for y = y_axis(1): length(y_axis)
        
        y_value = "Y" + num2str(y,'%03.f') + ".csv";
        
        filepath = filename + x_value + y_value;
        data = csvread(filepath);
        
        z_axis(x,y) = max(data);
    end
    
end

surf(z_axis)