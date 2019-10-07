function valid = trans_validity_check(trans_mat)
%Check if a transformation matrix is valid or not,
% that is check if the determinant is equal to 1
if det(trans_mat) ~= 1
    valid=false;
else
    valid= true;
end

