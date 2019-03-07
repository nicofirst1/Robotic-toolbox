function out = vec_subs(vector,vars,value)
%substitute variables with values in vector

if size(vars)~=size(value)
    error("sizes must be equal");
end

out=vector;
for idx=1:length(vars)
   
    out=subs(out,vars(idx),value(idx));
    
end

out=simplify(out);

end

