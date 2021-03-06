function homos = homo_mat(robot)
% Given a robot struct as input returns a [4,4,ndof] matrix. To get the homo from n to m you use homos(:,:,m) 



homos=repmat(sym(zeros(4)), 1, 1, robot.ndof+1);

for idx= 1:robot.ndof
    % calculating the paramentes
    ct = cos(robot.theta(idx)+robot.offset(idx));
    st = sin(robot.theta(idx)+robot.offset(idx));
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
homos(:,:,idx+1) = fix(robot.tool);
homos=simplify(homos);
     
    

end

