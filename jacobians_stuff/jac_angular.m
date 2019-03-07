function jac_a = jac_angular(robot)
%Compute the angular jacobian for revolutive joints

z0=[0;0;1];
rotations=rotation_mat(robot);
jac_a=sym(zeros(3,length(rotations)));

jac_a(:,1)=z0;


for idx=2:length(rotations)
   zi=1;

   for jdx=1:(idx-1)
       zi=zi*rotations(:,:,jdx);
   end
   
   zi=zi*z0;
   jac_a(:,idx)=zi;

    
    
    
    
end
jac_a=simplify(jac_a);


end

