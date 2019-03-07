function rot_matrix = custom_rotation_matrix(angles,order)
%given an order of axis (i.e. XYZ ZYZ ZXY ...) and some angles return the
%rotation matrix 


rot_matrix=zeros(3,3);

for idx= 1: length(angles)
    
    angle=angles(idx);
    s=sin(angle);
    c=cos(angle);
    
    if order(idx)=="z"
        mat=[ c -s 0; s c 0; 0 0 1];
        
    elseif order(idx)=="x"
        mat=[1 0 0; 0 c -s; 0 s c];
    else
        mat=[c 0 s; 0 1 0; -s 0 c];
    end
    
    if idx==1
        rot_matrix=mat;
    else
        rot_matrix= rot_matrix*mat;
    end
    
        
    
end


end

