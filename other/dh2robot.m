function robot = dh2robot(theta,d, a,alpha,types, dim, mdh)
% create a robot structure from denavit-hartenberg parameters
% :param theta, d, a, alpha: are vectors for the corresponding dh table, each
% having 1xn, where n is the number of joints in the robot 
%:param ndof: the number of degree of freedom for the robot, usually n
%:param types: a string with n chars, either "P" or "R" for prismatic or
%revolutive joints
%:param dim:(int) the dimenbsion in which the robot lies, either 2D or 3D,
%:param mdh: 0 if standard D&H, else 1

robot = struct( 'theta', sym(theta), ...
    'd', sym(d), ...
    'a', sym(a), ...
    'alpha', sym(alpha), ...
    'type', char(types), ...
    'dim', dim, ...
    'ndof',length(char(types)), ...
    'mdh',mdh );

end

