function equations = inverse_equations( robot, pd, phi)
%Given the type of manipulator and the dimension, return the equations for the inverse
%kinematic.  pd is the desired position of the end effector



if robot.dim==2
    
    if robot.type=="rrr"
        
        equations=ik_3R2D(robot,pd, phi);
        
    elseif robot.type=="rr"

        equations=ik_2R2D(robot,pd, phi);

        
    elseif robot.type=="eee"
            
        equations=0;
            
        else
            equations=0;

    
        end

        
        
        
 
    end
equations=simplify(equations);
end


function result = ik_3R2D( robot, pd, phi)
c2= pd(1)^2+pd(2)^2-robot.a(1)^2-robot.a(2)^2;
c2=c2/(2*robot.a(1)*robot.a(2));

s21=sqrt(1-c2);
s22=-sqrt(1-c2);

theta21=atan2(s21,c2);
theta22=atan2(s22,c2);

s11=(robot.a(1)+robot.a(2)*c2)*pd(2)-robot.a(2)*s21*pd(1);
s11=s11/(pd(1)^2+pd(2)^2);

c11=(robot.a(1)+robot.a(2)*c2)*pd(1)+robot.a(2)*s21*pd(2);
c11=c11/(pd(1)^2+pd(2)^2);

theta11=atan2(s11,c11);


s11=(robot.a(1)+robot.a(2)*c2)*pd(2)-robot.a(2)*s22*pd(1);
s11=s11/(pd(1)^2+pd(2)^2);

c11=(robot.a(1)+robot.a(2)*c2)*pd(1)+robot.a(2)*s22*pd(2);
c11=c11/(pd(1)^2+pd(2)^2);

theta12=atan2(s11,c11);

theta31=phi-theta11-theta21;
theta32=phi-theta12-theta22;

first=[theta11,theta21,theta31];
second=[theta12,theta22,theta32];

result=[first;second];

end



function result = ik_2R2D( robot, pd, phi)
c2= pd(1)^2+pd(2)^2-robot.a(1)^2-robot.a(2)^2;
c2=c2/(2*robot.a(1)*robot.a(2));

s21=sqrt(1-c2^2);
s22=-sqrt(1-c2^2);

theta21=atan2(s21,c2);
theta22=atan2(s22,c2);

det=robot.a(1)^2+robot.a(2)^2+2*robot.a(1)^2*robot.a(2)*c2;

s11=(robot.a(1)+robot.a(2)*c2)*pd(2)-robot.a(2)*s21*pd(1);
s11=s11;

c11=(robot.a(1)+robot.a(2)*c2)*pd(1)+robot.a(2)*s21*pd(2);
c11=c11;

theta11=atan2(s11,c11);


s11=(robot.a(1)+robot.a(2)*c2)*pd(2)-robot.a(2)*s22*pd(1);
s11=s11;

c11=(robot.a(1)+robot.a(2)*c2)*pd(1)+robot.a(2)*s22*pd(2);
c11=c11;

theta12=atan2(s11,c11);


first=[theta11,theta21];
second=[theta12,theta22];

result=[first;second];

end



