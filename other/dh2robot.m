function robot = dh2robot(theta,d, a,alpha,types, dim, mdh, tool, offset)
% create a robot structure from denavit-hartenberg parameters
% :param theta, d, a, alpha: are vectors for the corresponding dh table, each
% having 1xn, where n is the number of joints in the robot 
%:param ndof: the number of degree of freedom for the robot, usually n
%:param types: a string with n chars, either "P" or "R" for prismatic or
%revolutive joints
%:param dim:(int) the dimenbsion in which the robot lies, either 2D or 3D,
%:param mdh: 0 if standard D&H, else 1
% param tool: either 0 or dh params for transformation, same order as
% function [theta,d, a,alpha]
%param offset: offset for thetas, if 0 then array of zeros


if offset==0
    offset=zeros(1,ndof);
end


% tool not given so make it identity matrix
if tool==0
    tool=[1,0,0,0; 0,1,0,0; 0,0,1,0;  0,0,0,1;];
else 
    % get params
    theta_tool=tool(1);
    d_tool=tool(2);
    a_tool=tool(3);
    alpha_tool=tool(4);
    
    % compute cos/sin
    ct=cos(theta_tool);
    ca=cos(a_tool);
    st=sin(theta_tool);
    sa=sin(a_tool);
    
    % get right homo
    if mdh==1
        tool=modified_homo(ct,st,ca,sa,a_tool,d_tool);
    else
        tool=standard_homo(ct,st,ca,sa,a_tool,d_tool);
    end
end





robot = struct( 'theta', sym(theta), ...
    'd', sym(d), ...
    'a', sym(a), ...
    'alpha', sym(alpha), ...
    'type', char(types), ...
    'dim', dim, ...
    'ndof',length(char(types)), ...
    'mdh',mdh ,...
    'tool', tool, ...
    'offset',offset);

end

