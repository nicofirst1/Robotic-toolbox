function jac = jac_from_robot(robot)
% return the jacobian given the struct robot

pe=pe_from_robot(robot);
jac=jac_from_pe(pe,robot.theta);


end

