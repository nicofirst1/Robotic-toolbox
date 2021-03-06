function peaks = peak_values(qtau,Tmin)
%Return the peak value (velocity, acceleratio, jerk...) of a timing law
%given the minimum feasible time Tmin 



syms t T;
tau=t/Tmin;

qtau=subs(qtau,T,Tmin);

dqtau=diff(qtau,t);

ts=solve( dqtau==0,t);

taus=subs(tau,t,ts);

% remove boundaries
taus=taus(taus~=0);
taus=taus(taus~=1);


t=Tmin*taus;
peaks=double(t);

disp("Remeber to insert this values into the respective qs");

end

