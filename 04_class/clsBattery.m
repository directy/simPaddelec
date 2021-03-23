classdef clsBattery
    % 
    %   Detailed explanation goes here
     %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        %% --- general parameters ---
        Capacity;
        Voltage;
        InternalResistance;
     end
    
 methods 
        
   function obj = clsBattery() % constructor
       
        %% Controller 
        obj.Capacity = 200; %   Wh
        obj.Voltage = 48;   % V
        obj.InternalResistance	 = 0.001; % Ohm
    end % constructor
    
 end % methods
 
  
end %class
    

