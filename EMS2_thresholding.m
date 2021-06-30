%for pulse rate
    if y(c,1) == 82
        if ( y(c,2) > 100 || y(c,2) < 60)
            if ( Push_button(i,1) == 0)
                Alarm_Medical_Staff(i,1) = 1;
            else 
                Alarm_Medical_Staff(i,1) = 0;
            end
                for k=1:doctors_number
                    if y(c,3) == dr(k).Corresponding_patient
                        dr(k).Notification = 1;
                        dr(k).Patient_data_PR(dr(k).counter_PR,1) = y(c,2);
                        dr(k).counter_PR = dr(k).counter_PR +1;
                        break
                    end
                end
                N.Patient_data_PR(N.counter_PR1,1)= y(c,2);
                N.Patient_data_PR(N.counter_PR1,2)= y(c,3);
                N.counter_PR1 = N.counter_PR1 +1;
        else
            Alarm_Medical_Staff(i,1) = 0;
            for k=1:doctors_number
                if y(c,3) == dr(k).Corresponding_patient
                    dr(k).Notification = 0;
                    dr(k).Patient_data_PR(dr(k).counter_PR,1) = y(c,2);
                    dr(k).counter_PR = dr(k).counter_PR +1;
                    break
                end
            end
            %N.Patient_data_PR(c,1)= 0;
        end
    end
    
    %for blood pressure
      if y(c,1) == 80
        if ( y(c,2) > 16 || y(c,2) < 9)
            if ( Push_button(i,1) == 0)
                Alarm_Medical_Staff(i,1) = 1;
            else 
                Alarm_Medical_Staff(i,1) = 0;
            end
                for k=1:doctors_number
                    if y(c,3) == dr(k).Corresponding_patient
                        dr(k).Notification = 1;
                        dr(k).Patient_data_BP(dr(k).counter_BP,1) = y(c,2);
                        dr(k).counter_BP = dr(k).counter_BP +1;
                        break
                    end
                end
                N.Patient_data_BP(N.counter_BP1,1)= y(c,2);
                N.Patient_data_BP(N.counter_BP1,2)= y(c,3);
                N.counter_BP1 = N.counter_BP1 + 1;
        else
            Alarm_Medical_Staff(i,1) = 0;
            for k=1:doctors_number
                if y(c,3) == dr(k).Corresponding_patient
                    dr(k).Notification = 0;
                    dr(k).Patient_data_BP(dr(k).counter_BP,1) = y(c,2);
                    dr(k).counter_BP = dr(k).counter_BP +1;
                    break
                end
            end
            %N.Patient_data_PR(c,1)= 0;
        end
      end
        %for temperature
      if y(c,1) == 84
        if ( y(c,2) > 38 || y(c,2) < 36)
            if ( Push_button(i,1) == 0)
                Alarm_Medical_Staff(i,1) = 1;
            else 
                Alarm_Medical_Staff(i,1) = 0;
            end
                for k=1:doctors_number
                    if y(c,3) == dr(k).Corresponding_patient
                        dr(k).Notification = 1;
                        dr(k).Patient_data_T(dr(k).counter_T,1) = y(c,2);
                        dr(k).counter_T = dr(k).counter_T +1;
                        break
                    end
                end
                N.Patient_data_T(N.counter_T,1)= y(c,2);
                N.Patient_data_T(N.counter_T,2)= y(c,3);
        else
            Alarm_Medical_Staff(i,1) = 0;
            for k=1:doctors_number
                if y(c,3) == dr(k).Corresponding_patient
                    dr(k).Notification = 0;
                    dr(k).Patient_data_T(dr(k).counter_T,1) = y(c,2);
                    dr(k).counter_T = dr(k).counter_T +1;
                    break
                end
            end
            %N.Patient_data_PR(c,1)= 0;
        end
    end