function robot = load_robot(type,dim)
%load a robot structure based on type and dims rather than dh parameters


if dim==2
    
    
    if type=="rr"
        robot=r_2d2r(type,dim);
    end
    
else
    robot=0;
end

end


function robot=r_2d2r(type,dim)

syms q1 q2 l1 l2

robot = struct( 'theta', [q1 q2], ...
    'd', [0 0], ...
    'a', [l1 l2], ...
    'alpha', [0 0], ...
    'type', char(type), ...
    'dim', dim, ...
    'ndof',2);


end
