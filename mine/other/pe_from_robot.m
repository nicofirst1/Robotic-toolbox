function pe = pe_from_robot(robot)
% return position of the end effector from the robot
homo=homo_mat(robot);
trans=trans_mat(homo,[1,robot.ndof]);
pe=trans*[0,0,0,1]';
pe=pe(1:3,:);
end

