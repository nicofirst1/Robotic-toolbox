function robot = cork2mine(DH,dim,mdh, tool)
%CORK2MINE Summary of this function goes here
%  Given a DH matrix in Corke form, return  robot insance
% tool: DH params for tool

link_num=size(DH,1);
d=DH(1:link_num,2);
a=DH(1:link_num,3);
alpha=DH(1:link_num,4);
offset=DH(1:link_num,6);

types=[];
% get all zeros theta (will be transformed to sym)
theta_zeros=sum(DH(:,1)==0);
theta=theta_syms(theta_zeros);

% add non zero as double
if theta_zeros~=size(DH,1)
    theta=[theta DH(theta_zeros+1:size(DH,1),1)];
end
    

for idx=(1):link_num
    
    
    % add the type of the link
    if DH(idx,5)==0
        types=[types "R"];
    else
        types=[types "P"];
    end


    
end

% convert from string to bool
if mdh=="standard"
    mdh=0;
else
    mdh=1;
end

robot=dh2robot(theta,d, a,alpha,types, dim, mdh, tool, offset);
 

end

