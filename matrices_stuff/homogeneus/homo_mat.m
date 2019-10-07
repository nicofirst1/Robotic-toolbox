function homos = homo_mat(robot)
% return the homogeneus matrices given the robot



homos=repmat(sym(zeros(4)), 1, 1, robot.ndof+1);

for idx= 1:robot.ndof
    % calculating the paramentes
    ct = cos(robot.theta(idx));
    st = sin(robot.theta(idx));
    ca = cos(robot.alpha(idx));
    sa = sin(robot.alpha(idx));
    a= robot.a(idx);
    d=robot.d(idx);
    
    % getting the right type of homo mat
    if robot.mdh==0
        homo=standard_homo(ct,st,ca,sa,a,d);
    else
        homo=modified_homo(ct,st,ca,sa,a,d);
    end
    
    homos(:,:,idx) = homo;
end

% add tool to last homo mat
homos(:,:,idx+1) = robot.tool;
     
    

end

