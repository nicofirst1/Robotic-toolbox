function rotation= elem_rotation(axis, angle)
%Return the matrix for element rotation along an axis


if axis=="z"
    
    rotation=[cos(angle) -sin(angle) 0; sin(angle) cos(angle) 0; 0 0 1];
end
if axis=="y"
    rotation=[cos(angle) 0 sin(angle); 0 1 0; -sin(angle) 0 cos(angle)];
end
 if axis=="x"
           rotation=[1 0 0; 0 cos(angle) -sin(angle); 0 sin(angle) cos(angle)];
 end
 
     

end

