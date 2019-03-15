function jv = pseudo_inv(j)
%Return the right pseudo inverse of a jacobian

if class(j)=='sym'
    jv=transpose(j)*power((j*transpose(j)),-1);
else
    jv=pinv(j);
end
end

