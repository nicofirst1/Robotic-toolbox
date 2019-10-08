function trans = trans_from_robot(robot,rrange)
% return the transition matrix given the robot and a range
% rrange is the range in witch you want to get the trans matrices [n,m], or
% all to compute everything

% get the homogeneus matrices
homos=homo_mat(robot);

if rrange=="all"
    % get from first to last +1 (tool)
    rrange=[1, robot.ndof+1];
end
% get the n-th one 
trans=homos(:,:,rrange(1));


% multiply each one until m is reached
for idx=(rrange(1)+1):rrange(2)
    trans=trans*homos(:,:,idx);
end


trans=simplify(trans);

end

