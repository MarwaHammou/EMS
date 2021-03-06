
clc;
clear;
Patient_number = 3;
doctors_number = 3;
T_freq = 1;
T_average = 37;
T_variance = 0.3;
BP_freq = T_freq*6;
BP_average = 12;
BP_variance = 1;
PR_freq = BP_freq*10;
PR_average = 80;
PR_variance = 5;
Push_button = zeros(Patient_number,1);
%Push_button(2,1) = 1;
%generation of doctor class objects
for i=1:doctors_number
    dr(i,1) = Doctor1(i);
end

%generation of nurse class objects
N = Nurse1();
c=1;

%data generation
for t=1:T_freq
    for i=1:Patient_number
        data(c,1) = 84; %Temperature Sensor
        data(c,2) = T_variance*randn()+ T_average; %Temperature Sensor
        y(c,:) = [data(c,:),i]; %gateway
        EMS2_thresholding;
        c = c+1;
    end
    for p=1:6
        for i=1:Patient_number
            data(c,1) = 80; %Blood Pressure Sensor
            data(c,2) = BP_variance*randn()+ BP_average; %Blood Pressure Sensor
            y(c,:) = [data(c,:),i]; %gateway
            EMS2_thresholding;
            c = c + 1;
        end
        for r=1:10
            for i=1:Patient_number
                data(c,1) = 82; %Pulse Rate Sensor
                if i == 2
                  data(c,2) = PR_variance*randn()+ 110;
                else
                data(c,2) = PR_variance*randn()+ PR_average; %Pulse Rate Sensor
                 end
                y(c,:) = [data(c,:),i]; %gateway
                EMS2_thresholding;
                c=c+1;
            end
        end
    end
end


