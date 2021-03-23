classdef clsBLDC
    %
    %   Detailed explanation goes here
    
    properties
        %% --- general parameters ---

        %% engine
        Armature_resistance; % Ohm
        Armature_inductance; % mH
        Torque_constant;   % Nm/A
        Rotor_inertia; % kg*m^2
        Rotor_damping;  % Nm/(rad/s)
        Initial_rotor_speed; % rpm
        % Rotational_Damper
        Damping_coefficient; % N*m/(rad/s)       

    end
  
 methods 
        
   function obj = clsBLDC() % constructor

        %% engine
        obj.Armature_resistance = 0.001; % Ohm
        obj.Armature_inductance = 0.1;   % mH
        obj.Torque_constant = 1;   % Nm/A
        obj.Rotor_inertia = 2.5e-5+ 0.0001; % kg*m^2
        obj.Rotor_damping = 1e-06;    % Nm/(rad/s)
        obj.Initial_rotor_speed = 0; % rpm
        % Rotational_Damper
        obj.Damping_coefficient = 0.00025; % N*m/(rad/s)
      
   end % constructor
 
 end % methods
 
 
end %class
    

