classdef Nurse1
    %NURSE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Patient_data_PR;
        Patient_data_BP;
        Patient_data_T;
        counter_PR1;
        counter_BP1;
        counter_T;
        
    end  
    methods
        function obj = Nurse1()
            %NURSE Construct an instance of this class
            %   Detailed explanation goes here
            obj.Patient_data_PR = 0;
            obj.Patient_data_BP = 0;
            obj.Patient_data_T = 0;
            obj.counter_PR1=1;
            obj.counter_BP1=1;
            obj.counter_T=1;
        end
        
    end
end

