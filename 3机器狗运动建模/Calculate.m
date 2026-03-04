%Define the constant variables
H0=100;
H1=100;
H2=100;

%Calculate
while(1)
    % input the axises of D
    x = input("please input the x: \n");
    y = input("please input the y:\n");
    z = input("please input the z:\n");
    
    % Calculate the angles for D
    a = rad2deg(atan(y/x)+acos(H0/sqrt(x^2+y^2)));
    b = rad2deg(atan(z/(y*cos(a)-x*sin(a)))-acos(((y*cos(a)-x*sin(a))^2+H1^2-H2^2+z^2)/...
        (2*H1*sqrt((y*cos(a)-x*sin(a))^2+z^2))));
    c = rad2deg(acos(((y*cos(a)-x*sin(a))^2-H1^2-H2^2+z^2)/(2*H1*H2)));
    
    %Check the feasibility
    if( (x^2+y^2)<H0^2 )
        fprintf("Error! Out of Reach!\n\n");
        continue;
    end

    yd = y*cos(a)-x*sin(a);
    zd = z;
    if( sqrt(yd^2+zd^2)>(H1+H2))
        fprintf("Error! Out of Reach!\n\n");
        continue;
    end
    
    % Print the results
    fprintf("the alpha is %.2g \n",a);
    fprintf("the beta is %.2g \n",b);
    fprintf("the gamma is %.2g \n\n",c);
end
