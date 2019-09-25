function   plot_robot(robot)
%PLOT_ROBOT plot a robot using corke toolbox
%   Detailed explanation goes here


for idx= 1:robot.ndof
    
    t=sym_converter(robot.theta(idx),45);
    d=sym_converter(robot.d(idx),1);
    a=sym_converter(robot.a(idx),1);
    alpha=sym_converter(robot.alpha(idx),90);
    
    
            % Link(DH, OPTIONS) is a link object using the specified kinematic
            % convention  and with parameters:
            %  - DH = [THETA D A ALPHA SIGMA OFFSET] where SIGMA=0 for a revolute and 1
            %    for a prismatic joint; and OFFSET is a constant displacement between the
            %    user joint variable and the value used by the kinematic model.
            %  - DH = [THETA D A ALPHA SIGMA] where OFFSET is zero.
            %  - DH = [THETA D A ALPHA], joint is assumed revolute and OFFSET is zero.
            %Options::
            %
            % 'standard'    for standard D&H parameters (default).
            % 'modified'    for modified D&H parameters.
            % 'revolute'    for a revolute joint, can be abbreviated to 'r' (default)
            % 'prismatic'   for a prismatic joint, can be abbreviated to 'p'
    
    DH = [t d a alpha];
    
    
    % setting joint type
    if robot.type(idx)=="R"
        
        DH=[DH 0];
        
    else
        
        DH=[DH 1];

    end
    
    if robot.mdh==1
         L(idx)=Link(DH, 'modified');
    else
         L(idx)=Link(DH, 'standard');
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

