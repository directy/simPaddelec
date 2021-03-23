classdef clsMotorController
    %clsBrush Parameter for Brush-Unit
    %   Detailed explanation goes here
    
    properties
        %% --- general parameters ---
        %% Controller
        % Ratelimiter 
        max_speed;
        Rising_slew_rate;
        Faling_slew_rate;
        % Speed_Controller
        Speed_Prop;
        Speed_Int;
        % Current_Controller
        Current_Prop;
        Current_Int;
        % Inverter
        stand_by_losses;
        %% engine
        Armature_resistance; % Ohm
        Armature_inductance; % mH
        Torque_constant;   % Nm/A
        Rotor_inertia; % kg*m^2
        Rotor_damping;  % Nm/(rad/s)
        Initial_rotor_speed; % rpm
        % Rotational_Damper
        Damping_coefficient; % N*m/(rad/s)
        %% Gear Box
        ratio;
        %% broom
        Broom_Inertia; % kg*m^2
        Breakaway_friction_torque; %N*m
        Coulomb_friction_torque; % N*m
        Viscous_friction_coefficient; % N*m/(rad/s)
        Transition_approximation_coefficient; % s/rad
        Linear_region_velocity_threshold; %rad/s
        

    end
    
 methods 
        
   function obj = clsMotorController() % constructor
       
        % Controller 
        obj.max_speed = 3000;
        obj.Rising_slew_rate = 0.9;
        obj.Faling_slew_rate = 0.9;
        
  
         % Speed_Controller
        obj.Speed_Prop = 9; % other Version 6.52686421960418;
        obj.Speed_Int  = 55; % other Version 46.7556378398736;
        % Current_Controller
        obj.Current_Prop = 0.155549474511;  % other Version 15.8203661254338;
        obj.Current_Int = 16.7654252701782; % other Version442.498982702916; 
        
        % Inverter
        obj.stand_by_losses = 30;
        %% engine
        obj.Armature_resistance = 0.001; % Ohm
        obj.Armature_inductance = 0.1;   % mH
        obj.Torque_constant = 1;   % Nm/A
        obj.Rotor_inertia = 2.5e-5+ 0.0001; % kg*m^2
        obj.Rotor_damping = 1e-06;    % Nm/(rad/s)
        obj.Initial_rotor_speed = 0; % rpm
        % Rotational_Damper
        obj.Damping_coefficient = 0.00025; % N*m/(rad/s)
        %% Gear Box
        obj.ratio = 1; % In der sehr einfachen Version, wird abschlieﬂend die Drehzahl durch 20 geteilt
        %% broom
        obj.Broom_Inertia = 0.45; % kg*m^2
        obj.Breakaway_friction_torque = 30; %N*m
        obj.Coulomb_friction_torque = 25; % N*m
        obj.Viscous_friction_coefficient = 10; % N*m/(rad/s)
        obj.Transition_approximation_coefficient = 10; % s/rad
        obj.Linear_region_velocity_threshold = 1000; %rad/s
      
   end % constructor
    
    
    
 end % methods
 
 
end %class
    

