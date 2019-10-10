function out = vec_subs(vector,vars,value)
%substitute variables with values in vector
% is vars=="all" then generate n thetas with n==length(values)


% assert vars and values have the same dimension
if size(vars)~=size(value)
    error("Sizes of 'vars' and 'vals' must be equal");
end

out=vector;

% if we want to subs all vars then create a theta for each value
if vars=="all"
    vars=theta_syms(length(value));

end


% for each vecotr use the subs function to substitute
for idx=1:length(vars)
   
    out=subs(out,vars(idx),value(idx));
    
end

% simplify syms
out=simplify(out);

end

