function thetas = theta_syms(num)
%THETA_SYMS Summary of this function goes here
%   return a vector of thetas as sym objects
thetas=[];
    
    for idx=1:num
        % initialize and add a sym for theta
        t= "t"+num2str(idx);
        thetas=[thetas,sym(t)];
    end
end

