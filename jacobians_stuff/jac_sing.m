function Singularities = jac_sing(jac)
% return singularities of jac


res=0;

range=[];
for idx=1:length(jac)
    range=[range idx];
end

combinations=nchoosek(range,size(jac,1));

for row= 1:length(combinations)
    comb=combinations(row,:);

    col=[];
    for idx=comb
    
        col=[col jac(:,idx)];
      
        
        
    end
        res=[res det(col)];

    

end

Singularities=simplify(res);




end

