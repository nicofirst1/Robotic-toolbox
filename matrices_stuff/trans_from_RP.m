function ret = trans_from_RP(rotation_mat,p_mat)
%Return the transformation matrix form a rotation matrix and a transaltion
%one

ret =[[rotation_mat;0,0,0],[p_mat;1]];
end

