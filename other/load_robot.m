function robot = load_robot(type,dim)
%load a robot structure based on type and dims rather than dh parameters


if dim==2
    
    if ~contains(type,"p")
        robot=r_nr2d(type,dim);

    end
    
    
else
    robot=0;
end

end


function robot=r_nr2d(type,dim)
    
theta=[];
a=[];
d=[];
alpha=[];

for idx=1:length(char(type))
   theta=[theta, "q"+idx];
   a=[a, "l"+idx];
   d=[d 0];
   alpha=[alpha 0];
    
end


robot = struct( 'theta', sym(theta), ...
    'd', d, ...
    'a', sym(a), ...
    'alpha', alpha, ...
    'type', char(type), ...
    'dim', dim, ...
    'ndof',length(char(type)));


end

