classdef clsMotorECU
    %clsBrush Parameter for Brush-Unit
    %   Detailed explanation goes here
    
    properties
        %% --- general parameters ---
        %% Controller
        % Ratelimiter 
        max_speed;
        slew_rate_up;
        slew_rate_down;
        % Speed_Controller
        Speed_Prop;
        Speed_Int;
        % Current_Controller
        Current_Prop;
        Current_Int;
        % Inverter
        stand_by_losses;
               

    end
    
 methods 
        
   function obj = clsMotorECU() % constructor
       
        % Controller 
        obj.max_speed = 3000;
        obj.slew_rate_up = 0.9;
        obj.slew_rate_down = 0.9;
        
  
         % Speed_Controller
        obj.Speed_Prop = 9; % other Version 6.52686421960418;
        obj.Speed_Int  = 55; % other Version 46.7556378398736;
        % Current_Controller
        obj.Current_Prop = 0.155549474511;  % other Version 15.8203661254338;
        obj.Current_Int = 16.7654252701782; % other Version442.498982702916; 
        
        % Inverter
        obj.stand_by_losses = 30;
  
      
   end % constructor
    
    
    
 end % methods
 
 
end %class
    

