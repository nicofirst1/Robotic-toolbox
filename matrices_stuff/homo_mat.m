function homos = homo_mat(robot)

homos=repmat(sym(zeros(4)), 1, 1, robot.ndof);

for idx= 1:robot.ndof
    ct = cos(robot.theta(idx));
    st = sin(robot.theta(idx));
    ca = cos(robot.alpha(idx));
    sa = sin(robot.alpha(idx));
    a= robot.a(idx);
    d=robot.d(idx);
    
    homo = [ 
        ct    -st*ca   st*sa     a*ct ; ...
        st    ct*ca    -ct*sa    a*st ; ...
        0     sa       ca        d    ; ...
        0     0        0         1         ];
    homos(:,:,idx) = homo;
end

     
    

end