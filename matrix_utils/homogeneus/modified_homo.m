function mat=modified_homo(ct,st,ca,sa,a,d)
% return the homogeneus matrix according to the craig book, that is having
% the parameters 'a' and 'alpha' refering to link i-1

mat= [
    ct      -st    0    a     ;...
    st*ca   ct*ca  -sa  -sa*d ;...
    st*sa   ct*sa  ca   ca*d  ;...
    0       0      0    1     ];

end
