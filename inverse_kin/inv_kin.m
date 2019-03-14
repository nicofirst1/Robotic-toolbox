function result = inv_kin(pe,pe_d,phi)
%pe: end effector position  
% pe_d: desired end effector position
% desired orentation 

eqs=pe==pe_d;
eqs=power(eqs,2);
eqs=sum(lhs(eqs)-rhs(eqs));
eqs=simplify(eqs);
result=eqs;
a=2;

end

