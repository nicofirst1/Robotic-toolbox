function out = vec_subs(vector,vars,value)
%substitute variables with values in vector


% assert vars and values have the same dimension
if size(vars)~=size(value)
    error("Sizes of 'vars' and 'vals' must be equal");
end

out=vector;
% for each vecotr use the subs function to substitute
for idx=1:length(vars)
   
    out=subs(out,vars(idx),value(idx));
    
end

% simplify syms
out=simplify(out);

end

