function [Score,PopObj] = NHVR5MOKP(PopObj,PF)
% <metric> <max>
% Normalized hypervolume

%--------------------------------------------------------------------------
% Copyright (c) 2016-2017 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB Platform
% for Evolutionary Multi-Objective Optimization [Educational Forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

 %the fmax and fmin are obtained from all non-dominated solutions by all
 %compared algorithms among all runs

    [N,M]    = size(PopObj);
    r=5;
   fmax = [-15367,-16382,-15414];
   fmin = [-20141,-20854,-19964];
    PopObj = (PopObj-repmat(fmin,N,1))./repmat((fmax-fmin),N,1);
    PopObj(any(PopObj>r,2),:) = [];
    RefPoint = ones(1,M)*r;
    if isempty(PopObj)
        Score = 0;
    else
        Score = stk_dominatedhv(PopObj,RefPoint);
    end
end