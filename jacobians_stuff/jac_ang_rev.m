function jac_a = jac_ang_rev(rotations,z0)
%Compute the angular jacobian for revolutive joints


jac_a=sym(zeros(3,length(rotations)));

jac_a(:,1)=z0;


for idx=2:length(rotations)
   zi=1;

   for jdx=1:idx
       zi=zi*rotations(:,:,jdx);
   end
   
   zi=zi*z0;
   jac_a(:,idx)=zi;

    
    
    
    
end



end

