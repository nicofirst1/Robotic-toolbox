function mat=standard_homo(ct,st,ca,sa,a,d)
% return the homogeneus matrix according to the standar formula, that is having
% the parameters 'a' and 'alpha' refering to link i


    mat = [ 
        ct    -st*ca   st*sa     a*ct ; ...
        st    ct*ca    -ct*sa    a*st ; ...
        0     sa       ca        d    ; ...
        0     0        0         1         ];

end
