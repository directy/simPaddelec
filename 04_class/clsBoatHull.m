classdef clsBoatHull 

    %   Detailed explanation goes here
    
    properties
        %% --- general parameters ---

        BreakawayFrictionForce;
        BreakawayFrictionVelocity;
        ColumbFrictionForce;
        ViscousFriction;
        Length;
        Width;
        Mass;
        SpeedVec_m_s;
        FricResistance_N;
        WaveResistance_N;

    end
    
 methods 
        
   function obj = clsBoatHull() % constructor
       
        % Controller 
        obj.BreakawayFrictionForce = 0.5 + 3;
        obj.BreakawayFrictionVelocity = 2.34 + 30;
        obj.ColumbFrictionForce = 7.01 - 5;
        obj.ViscousFriction = 18.33 - 7;
        obj.Length = 0.434; % m;
        obj.Width = 0.084; %m
        obj.Mass = 36; %kg;
        
        %%
% modelparameter based of http://www.oneoceankayaks.com/kayakpro/kayakgrid.htm
% adjusted for european values (SI-units)with Excel
% 02/AddCalc/Berechnungen.xlsx

        obj.SpeedVec_m_s=[
                            0,...
                            0.77166,...
                            1.02888,...
                            1.2861,...
                            1.54332,...
                            1.80054,...
                            2.05776,...
                            2.31498,...
                            2.5722,...
                            2.82942,...
                            3.08664,...
                            3.34386,...
                            3.60108...
                            ];


        obj.FricResistance_N=[
                            0,...
                            1.8237702,...
                            3.06482358,...
                            4.59056304,...
                            6.39209214,...
                            8.46051444,...
                            10.7869335,...
                            13.37134932,...
                            16.20486546,...
                            19.2830337,...
                            22.60585404,...
                            26.16887826,...
                            29.97210636...
                            ];

        obj.WaveResistance_N=[
                            0,...
                            0.09341262,...
                            0.2001699,...
                            0.3113754,...
                            0.39589158,...
                            0.76954206,...
                            1.98390612,...
                            5.6269983,...
                            11.87229918,...
                            18.5935596,...
                            22.49464854,...
                            31.53343158,...
                            39.9450156...
                            ];
  
   end % constructor
    
    
    
 end % methods
 
 
end %class
    

