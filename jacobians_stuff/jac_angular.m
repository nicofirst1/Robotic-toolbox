function jac_a = jac_angular(robot)
%Compute the angular jacobian for revolutive joints

z0=[0;0;1];
rotations=homo_mat(robot);
% discard tool rotation
rotations=rotations(:,:,1:robot.ndof);
rotations=rotations(1:3,1:3,:);
jac_a=sym(zeros(3,length(rotations)));

zero=[0;0;0];

if robot.type(1)=='R'

    jac_a(:,1)=z0;
else
        jac_a(:,1)=zero;
end


for idx=2:length(rotations)
   zi=1;

   for jdx=1:(idx-1)
       zi=zi*rotations(:,:,jdx);
   end
   
   zi=zi*z0;
   if robot.type(idx)=='R'
    jac_a(:,idx)=zi;
   else
     jac_a(:,idx)=zero;
   end

    
    
    
    
end
jac_a=simplify(jac_a);


end

