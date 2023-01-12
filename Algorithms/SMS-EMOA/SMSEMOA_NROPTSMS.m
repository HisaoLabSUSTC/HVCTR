function SMSEMOA_NROPTSMS(Global)
% <algorithm> <S>
% S metric selection based evolutionary multiobjective optimization
% algorithm

%------------------------------- Reference --------------------------------
% M. Emmerich, N. Beume, and B. Naujoks, An EMO algorithm using the
% hypervolume measure as selection criterion, Proceedings of the
% International Conference on Evolutionary Multi-Criterion Optimization,
% 2005, 62-76.
%------------------------------- Copyright --------------------------------
% Copyright (c) 2018-2019 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Generate random population
  
    r = 1+1/getH(Global.M,Global.N);
    Population = Global.Initialization();

    %% Optimization
    while Global.NotTermination(Population)
        for i = 1 : Global.N
            drawnow();
            Parent1_ind = randperm(Global.N,1);
            Parent1 = Population(Parent1_ind);
            candidates_ind = randperm(Global.N, 10);
            candidates = Population(candidates_ind);
            dis = pdist2(Parent1.objs, candidates.objs);
            [~, ind] = min(dis);  
            Parent2 = Population(candidates_ind(ind));
            Parent = [Parent1 Parent2];
            Offspring = GAhalf(Parent);
            Population = Reduce([Population,Offspring],r);
        end
    end
end

function Population = Reduce(Population,ref)
% Delete one solution from the population

    %% Identify the solutions in the last front
    PopObj = Population.objs; 
    FrontNo    = NDSort(PopObj,inf);
    LastFront = find(FrontNo==max(FrontNo));
    PopObj = PopObj(LastFront,:);
    [N,M]     = size(PopObj);
    
    %% Calculate the contribution of hypervolume of each solution   
    deltaS = CalHVC(PopObj,ref,N);
    
    %% Delete the worst solution from the last front
    [~,worst] = min(deltaS);
    Population(LastFront(worst)) = [];
end

function HVC = CalHVC(data,r,PopNum)
    fmin = min(data,[],1);
    fmax = max(data,[],1);
    data = (data - fmin)./(fmax-fmin);
    ref = ones(1,size(data,2)).*r;
    
    HVC = zeros(1,PopNum);

    for i=1:PopNum
        data1 = data;
        s = data1(i,:);
        data1(i,:)=[];
        data1 = max(s,data1);        
        HVC(1,i) = prod(ref-s)-stk_dominatedhv(data1,ref); 
    end
    
    
end