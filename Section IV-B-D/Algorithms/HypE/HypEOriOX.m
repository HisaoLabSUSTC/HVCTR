function HypEOriOX(Global)
% <algorithm> <H>
% Hypervolume estimation algorithm
% nSample --- 10000 --- Number of sampled points for HV estimation

%------------------------------- Reference --------------------------------
% J. Bader and E. Zitzler, HypE: An algorithm for fast hypervolume-based
% many-objective optimization, Evolutionary Computation, 2011, 19(1):
% 45-76.
%------------------------------- Copyright --------------------------------
% Copyright (c) 2018-2019 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Parameter setting
    nSample = Global.ParameterSet(10000);

    %% Generate random population
    Population = Global.Initialization();
    
    % Reference point for hypervolume calculation
    RefPoint = zeros(1,Global.M) + 2000;

    %% Optimization
    while Global.NotTermination(Population)
        MatingPool = TournamentSelection(2,Global.N,-CalHV_Ori(Population.objs,RefPoint,Global.N,nSample));
        Offspring  = GAOX(Population(MatingPool));    
        Population = EnvironmentalSelection_Ori([Population,Offspring],Global.N,RefPoint,nSample);
    end
end