function pe = pe_from_robot(robot)
% return position of the end effector [Pe] from the robot

trans=trans_from_robot(robot,"all");
pe=trans*[0,0,0,1]';
pe=pe(1:robot.dim,:);
end

