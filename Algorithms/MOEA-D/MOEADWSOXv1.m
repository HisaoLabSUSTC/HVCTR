function MOEADWSOXv1(Global)
% <algorithm> <M>
% Multiobjective evolutionary algorithm based on decomposition
% type --- 1 --- The type of aggregation function

%------------------------------- Reference --------------------------------
% Q. Zhang and H. Li, MOEA/D: A multiobjective evolutionary algorithm based
% on decomposition, IEEE Transactions on Evolutionary Computation, 2007,
% 11(6): 712-731.
%------------------------------- Copyright --------------------------------
% Copyright (c) 2018-2019 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Parameter setting
    Parameter = {0.5 20 3 20};

    %% Generate the weight vectors
    [W,Global.N] = UniformPoint(Global.N,Global.M);
    T = ceil(Global.N/10);

    %% Detect the neighbours of each solution
    B = pdist2(W,W);
    [~,B] = sort(B,2);
    B = B(:,1:T);
    
    %% Generate random population
    Population = Global.Initialization();
    Z = min(Population.objs,[],1);

    
    %% Optimization
    while Global.NotTermination(Population)
        % For each solution
        for i = 1 : Global.N      
            % Choose the parents
            P = B(i,randperm(size(B,2)));

            % Generate an offspring
            Offspring = GAhalfOX(Population(P(1:2)), Parameter);

            % Update the ideal point
            Z = min(Z,Offspring.obj);

            % Update the neighbours
             g_old = sum((Population(P).objs).*(W(P,:)),2); 
             g_new = sum(repmat(Offspring.obj, T, 1).*(W(P,:)),2); 
    
            Population(P(g_old>=g_new)) = Offspring;
        end
    end
end