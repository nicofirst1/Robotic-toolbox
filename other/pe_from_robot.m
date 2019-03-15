function pe = pe_from_robot(robot)
% return position of the end effector from the robot
trans=trans_mat(robot,[1,robot.ndof]);
pe=trans*[0,0,0,1]';
pe=pe(1:robot.dim,:);
end

