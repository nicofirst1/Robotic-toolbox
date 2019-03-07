function [theta,r] = inverse_angle_axis_method(R_if)
% Get the values of theta and r from the R_if (R_i'*R_f) matrix to apply a
% timing law

theta=acos((R_if(1,1)+R_if(2,2)+R_if(3,3)-1)/2);
r=[R_if(3,2)-R_if(2,3);R_if(1,3)-R_if(3,1);R_if(2,1)-R_if(1,2)]/(2*sin(theta));



end

