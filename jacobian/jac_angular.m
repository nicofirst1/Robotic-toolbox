function jac_a = jac_angular(robot)
%Compute the angular jacobian for revolutive joints

rotations=homo_mat(robot);
% discard tool homo
rotations=rotations(:,:,1:robot.ndof);
% get the rotations 
rotations=rotations(1:3,1:3,:);
% initialize the jacobian 
jac_a=sym(zeros(3,length(rotations)));


if robot.type(1)=='R'
    % if the joint is prismatic the azis of rotation is Z
    z0=[0;0;1];
else
    % else there is no rotation
    z0=[0;0;0];

end

% for every frame multiply the rotation matrix
for idx=1:size(rotations,3)
    zi=1;

    for jdx=1:idx
        zi=zi*rotations(:,:,jdx);
    end
   
    zi=zi*z0;
    
    jac_a(:,idx)=zi;
end

end
