function homos = homo_mat(robot)
% return the homogeneus matrices given the robot



homos=repmat(sym(zeros(4)), 1, 1, robot.ndof);

for idx= 1:robot.ndof
    % calculating the paramentes
    ct = cos(robot.theta(idx));
    st = sin(robot.theta(idx));
    ca = cos(robot.alpha(idx));
    sa = sin(robot.alpha(idx));
    a= robot.a(idx);
    d=robot.d(idx);
    
    % getting the right type of homo mat
    if robot.mdh==0
        homo=canonical_homo_mat(ct,st,ca,sa,a,d);
    else
        homo=craig_homo_mat(ct,st,ca,sa,a,d);
    end
    
    homos(:,:,idx) = homo;
end

     
    

end

function mat=canonical_homo_mat(ct,st,ca,sa,a,d)
% return the homogeneus matrix according to the standar formula, that is having
% the parameters 'a' and 'alpha' refering to link i


    mat = [ 
        ct    -st*ca   st*sa     a*ct ; ...
        st    ct*ca    -ct*sa    a*st ; ...
        0     sa       ca        d    ; ...
        0     0        0         1         ];

end

function mat=craig_homo_mat(ct,st,ca,sa,a,d)
% return the homogeneus matrix according to the craig book, that is having
% the parameters 'a' and 'alpha' refering to link i-1

mat= [
    ct      -st    0    a     ;...
    st*ca   ct*ca  -sa  -sa*d ;...
    st*sa   ct*sa  ca   ca*d  ;...
    0       0      0    1     ];

end
