function T = minimum_motion_time(qtau,dqtau,Val_max)
%given a generic timing law qtau, its derivative dqtau and the maximum
%values for the joints return the minimum motion time T. Notice that both t
%and T must appear in qtau/dqtau 

syms t T;
tau=t/T;

ts=solve( dqtau==0,t);

taus=subs(tau,t,ts);

% remove boundaries
taus=taus(taus~=0);
taus=taus(taus~=1);

if length(taus)<length(Val_max)
    val=taus(1);
    for idx=1:(length(Val_max)-length(taus))
        taus=[taus;val];
    end
end

T=zeros(size(taus));
for idx=1:length(taus)
    
   
    maxs=subs(qtau(idx),tau,taus(idx));

    prov=abs(solve(maxs==Val_max(idx)));
    
    T(idx)=prov(1);

end

T=double(T);


end


