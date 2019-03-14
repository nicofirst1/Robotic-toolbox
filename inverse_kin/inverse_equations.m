function equations = inverse_equations(types, dim, robot, pe, phi)
%Given the type of manipulator and the dimension, return the equations for the inverse
%kinematic. A is the homo matrix and pe_d is the desired position of the
%end effector



if dim==2
    
    if types=="rrr"
        
        equations=ik_3R2D(robot,pe, phi);
        
        
    else if types=="eee"
            
        equations=0;
            
        else
            equations=0;

    
        end

        
        
        
 
    end
else
    equations=0;
end
end


function result = ik_3R2D( robot, pe, phi)
c2= pe(1)^2+pe(2)^2-robot.a(1)^2-robot.a(2)^2;
c2=c2/(2*robot.a(1)*robot.a(2));

s21=sqrt(1-c2);
s22=-sqrt(1-c2);

theta21=atan2(s21,c2);
theta22=atan2(s22,c2);

s11=(robot.a(1)+robot.a(2)*c2)*pe(2)-robot.a(2)*s21*pe(1);
s11=s11/(pe(1)^2+pe(2)^2);

c11=(robot.a(1)+robot.a(2)*c2)*pe(1)+robot.a(2)*s21*pe(2);
c11=c11/(pe(1)^2+pe(2)^2);

theta11=atan2(s11,c11);


s11=(robot.a(1)+robot.a(2)*c2)*pe(2)-robot.a(2)*s22*pe(1);
s11=s11/(pe(1)^2+pe(2)^2);

c11=(robot.a(1)+robot.a(2)*c2)*pe(1)+robot.a(2)*s22*pe(2);
c11=c11/(pe(1)^2+pe(2)^2);

theta12=atan2(s11,c11);

theta31=phi-theta11-theta21;
theta32=phi-theta12-theta22;

first=[theta11,theta21,theta31];
second=[theta12,theta22,theta32];

result=[first;second];

end


