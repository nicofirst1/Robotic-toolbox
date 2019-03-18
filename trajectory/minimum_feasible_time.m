function T = minimum_feasible_time(qtau, Val_maxs)
%given a timing law qtau and an array of maximum values [nDim, derivatives], estimate the
%minimum feasible time 

syms t;

Ts=[];

for idx=1:size(Val_maxs,2)
   
    dqtau=diff(qtau,t);
    
    Ti=minimum_motion_time(qtau,Val_maxs(:,idx));
    Ts=[Ts Ti];
    
    qtau=dqtau;
    
end
disp("Times for each derivative");
disp(Ts);
T=max(Ts(:));

end

