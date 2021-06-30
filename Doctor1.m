classdef Doctor1
    %DOCTOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Corresponding_patient;
        Patient_data_PR;
        Patient_data_BP;
        Patient_data_T;
        Notification;
        %Treatment;
        counter_PR;
        counter_BP;
        counter_T;
    end
    
    methods
        function obj = Doctor1(m)
            %DOCTOR Construct an instance of this class
            %   Detailed explanation goes here
            obj.Corresponding_patient = m;
            obj.Notification = 0;
            %obj.Treatment = 0;
            obj.counter_PR = 1;
            obj.counter_BP = 1;
            obj.counter_T = 1;
        end
    end
end

