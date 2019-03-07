function homos = homo_mat(robot)

homos=repmat(sym(zeros(4)), 1, 1, robot.ndof);

for idx= 1:robot.ndof
    ct = cos(robot.theta(idx));
    st = sin(robot.theta(idx));
    ca = cos(robot.alpha(idx));
    sa = sin(robot.alpha(idx));
    
    homo = [ ct    -st*ca   st*sa     robot.a(idx)*ct ; ...
        st    ct*ca    -ct*sa    robot.a(idx)*st ; ...
        0     sa       ca        robot.d(idx)    ; ...
        0     0        0         1         ];
    homos(:,:,idx) = homo;
end

     
    

end