function j = jac_dot(jac, vars)
%Computes the derivative of a jacobian


j=sym(zeros(size(jac)));

for idx= 1:size(jac,1)
    
    for jdx=1:size(jac,2)
        
        for v=vars
          j(idx,jdx)=j(idx,jdx)+ diff(jac(idx,jdx),v)*sym("d"+char(v));

        end
       
        
        
    end

    

end

j=simplify(j);

end

