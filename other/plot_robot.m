function   plot_robot(robot)
%PLOT_ROBOT plot a robot using corke toolbox
%   Detailed explanation goes here


for idx= 1:robot.ndof
    
    t=sym_converter(robot.theta(idx),45);
    d=sym_converter(robot.d(idx),1);
    a=sym_converter(robot.a(idx),1);
    alpha=sym_converter(robot.alpha(idx),90);
    
    
    
    
    if robot.type(idx)=="R"
    
        L(idx)=Revolute('d',d, 'a', a, 'alpha', alpha);
        
    else
        
         L(idx)=Prismatic('theta',t ,'a', a, 'alpha', alpha);


    end
   
    
end

rob= SerialLink(L);
rob.plot(zeros(robot.ndof));

end

function out = sym_converter(sym_var,default_val)

out=sym_var;


try
    out=double(sym_var);
    
catch
    out= default_val;

end
end

