function Singularities = jac_sing(jac)
% return singularities of jac


res=0;

for row= 1:size(jac,1)

    for col=(row+1):size(jac,2)
    
        col1=jac(:,row);
        col2=jac(:,col);
        
        res=[res det([col1,col2])];
        
    end
    

end

Singularities=simplify(res);




end

