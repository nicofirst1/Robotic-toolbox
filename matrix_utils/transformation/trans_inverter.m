function inverted = trans_inverter(trans_mat)
% return the rotation matrices given a robot configuration

inverted=sym(zeros(4,4));
R=trans_mat(1:3,1:3);
P=trans_mat(1:3,4);

inverted(1:3,1:3)=transpose(R);
inverted(1:3,4)=transpose(R)*P;
inverted(4,4)=1;





