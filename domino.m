function [dydt] = domino(t, y, GMT, time, d, Tlimit)
dydt = zeros(4,1);
dydt(1) = (-y(1)^3 + y(1) + sqrt(4/27)*(GMT/Tlimit(1)) + d * ((2/10*(y(2)+1))+(-10/10*(y(3)+1))))*1/time(1);
dydt(2) = (-y(2)^3 + y(2) + sqrt(4/27)*(GMT/Tlimit(2)) + d * ((10/10*(y(1)+1))+(1.5/10*(y(3)+1))))*1/time(2);
dydt(3) = (-y(3)^3 + y(3) + sqrt(4/27)*(GMT/Tlimit(3)) + d * ((10/10*(y(1)+1))+(3/10*(y(2)+1))))*1/time(3);
dydt(4) = (-y(4)^3 + y(4) + sqrt(4/27)*(GMT/Tlimit(4)) + d * (-4/10*(y(3)+1)))*1/time(4);
end

