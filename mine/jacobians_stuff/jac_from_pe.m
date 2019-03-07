function Result=jac_from_pe(p,vars)
%jacobian given position of end-effector
% p must be nDim x 1 vector

res=sym(zeros(2,size(vars,2)));
nDim=size(p,1);



idx=1;
for var=vars
    
    for jdx= 1:nDim
    
        temp_p=p(jdx,:);
        derivative=diff(temp_p,var);
        res(jdx,idx)=derivative;

    
    end
    
    

    idx=idx+1;
    


end
Result=res;


end