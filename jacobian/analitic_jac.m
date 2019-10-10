function j = analitic_jac(robot,vars)
%compute the analitic jacobian from the robot and the variables to derivate
%
j=jac_from_robot(robot,vars);
ja=jac_angular(robot);
j(3,:)=ja(3,:);
end

