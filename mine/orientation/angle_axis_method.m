function R = angle_axis_method(theta,r)
%Return the rotation frame given theta and r

c=cos(theta);
c1=1-c;
s=sin(theta);

r11=r(1)^2*c1+c;
r12=r(1)*r(2)*c1 -r(3)*s;
r13=r(1)*r(3)*c1+r(2)*s;
r21=r(1)*r(2)*c1+r(3)*s;
r22=r(2)^2*c1+c;
r23=r(2)*r(3)*c1-r(1)*s;
r31=r(1)*r(3)*c1-r(2)*s;
r32=r(2)*r(3)*c1+r(1)*s;
r33=r(3)^2*c1*c;

R=[r11 r12 r13; r21 r22 r23; r31 r32 r33];
end

