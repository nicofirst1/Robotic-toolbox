function Result = jac(p,vars)

res=0;

for var= vars
    
    res= res+ diff(p,var);
end

Result=res;

end


