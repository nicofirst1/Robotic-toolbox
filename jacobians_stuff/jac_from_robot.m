function jac = jac_from_robot(robot,vars)
% return the jacobian given the struct robot and the variables on which to
% perform the partial derivation

pe=pe_from_robot(robot);
jac=jac_from_pe(pe,vars);


end
