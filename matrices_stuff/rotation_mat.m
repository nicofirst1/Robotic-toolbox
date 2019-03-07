function rotations = rotation_mat(robot)
% return the rotation matrices given a robot configuration

rotations=sym(zeros(3,3,robot.ndof));


for idx= 1:robot.ndof

    ct = cos(robot.theta(idx));
    st = sin(robot.theta(idx));
    ca = cos(robot.alpha(idx));
    sa = sin(robot.alpha(idx));
    
    rot = [ ct    -st*ca   st*sa  ; ...
                st    ct*ca    -ct*sa     ; ...
                0     sa       ca        ];
            
    rotations(:,:,idx) = rot;

end


end

