function HypEOri_SMS(Global)
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
        MatingPool1 = TournamentSelection(2,floor(Global.N/2),-CalHV_Ori(Population.objs,RefPoint,Global.N,nSample));
        MatingPool2 = zeros(1,floor(Global.N/2)); 
        for i=1:floor(Global.N/2)
            P1 = Population(MatingPool1(i));
            candidates_ind = TournamentSelection(2,10,-CalHV_Ori(Population.objs,RefPoint,Global.N,nSample));
            candidates = Population(candidates_ind);
            dis = pdist2(P1.objs,candidates.objs); 
            [~,ind] = min(dis); 
            MatingPool2(i) = candidates_ind(ind);
        end
        MatingPool = [MatingPool1 MatingPool2];        
        Offspring  = GA(Population(MatingPool));    
        Population = EnvironmentalSelection_Ori([Population,Offspring],Global.N,RefPoint,nSample);
    end
end