function robot = cork2mine(DH,dim,mdh)
%CORK2MINE Summary of this function goes here
%  Given a DH matrix in Corke form, return  robot insance

link_num=size(DH,1);
d=DH(1:link_num,2);
a=DH(1:link_num,3);
alpha=DH(1:link_num,4);

types=[];
theta=theta_syms(link_num);

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

robot=dh2robot(theta,d, a,alpha,types, dim, mdh);
 

end

