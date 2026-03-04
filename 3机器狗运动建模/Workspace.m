% Define some variables
H0 = 1;
H1 = 1;
H2 = 1;

% Loop to find out the workspace
for x=0:0.1:H0
    for y=0:0.1:H1+H2
        for z=0:0.1:H1+H2
            %Check the feasibility
            a = rad2deg(atan(y/x)+acos(H0/sqrt(x^2+y^2)));
            yd = y*cos(a)-x*sin(a);
            zd = z;

            if( (x^2+y^2)<H0^2 || sqrt(yd^2+zd^2)>(H1+H2))
                fprintf("%.3g %.3g %.3g is out of Reach!\n",x, y, z);
                continue;
            end
            scatter3(x,y,z);
            hold on;
        end
    end
end

