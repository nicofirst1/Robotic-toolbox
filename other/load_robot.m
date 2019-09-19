function robot = load_robot(type,dim)
%load certain types of robot based on the number and types of joints
%:param types: a string with n chars, either "P" or "R" for prismatic or
%:param dim:(int) the dimenbsion in which the robot lies, either 2D or 3D,



if dim==2
    
    % if the robot has just n number of revolutive joints and no prismatic
    % and if it is just a 2D type
    if ~contains(type,"p")
        if dim==2
        robot=r_nr2d(type,dim);
        else
            error("Not implemented for 3 dimensions")
        end

    end
    
    
else
    error("Not implemented with prismatic joints"); 
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

robot=dh2robot(theta,d,a,alpha,type,dim,type);


end

