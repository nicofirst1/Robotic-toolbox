function jac = jac_from_robot(robot)
% return the jacobian given the struct robot and the variables on which to
% perform the partial derivation

pe=pe_from_robot(robot);
jl=jac_linear(pe,robot.theta);
ja=jac_angular(robot);

jac=[jl;ja];

end

