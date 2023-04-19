function SPEA2SDE_SMS(Global)
% <algorithm> <S>
% SPEA2 with shift-based density estimation

%------------------------------- Reference --------------------------------
% M. Li, S. Yang, and X. Liu, Shift-based density estimation for
% Pareto-based algorithms in many-objective optimization, IEEE Transactions
% on Evolutionary Computation, 2014, 18(3): 348-365.
%------------------------------- Copyright --------------------------------
% Copyright (c) 2018-2019 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Generate random population
    Population = Global.Initialization();
    Fitness    = CalFitness(Population.objs);
    
    %% Optimization
    while Global.NotTermination(Population)
        MatingPool1 = TournamentSelection(2,floor(Global.N/2),Fitness);
        MatingPool2 = zeros(1,floor(Global.N/2)); 
        for i=1:floor(Global.N/2)
            P1 = Population(MatingPool1(i));
            candidates_ind = TournamentSelection(2,10,Fitness);
            candidates = Population(candidates_ind);
            dis = pdist2(P1.objs,candidates.objs); 
            [~,ind] = min(dis); 
            MatingPool2(i) = candidates_ind(ind);
        end
        MatingPool = [MatingPool1 MatingPool2];
        Offspring  = GA(Population(MatingPool));       
        [Population,Fitness] = EnvironmentalSelection([Population,Offspring],Global.N);
    end
end