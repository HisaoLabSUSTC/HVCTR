function [Score,PopObj] = HV_R15(PopObj,PF)
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

    [N,M]    = size(PopObj);
    r=1.5;
    fmin   = min(PF,[],1);
    fmax   = max(PF,[],1);
    PopObj = (PopObj-repmat(fmin,N,1))./repmat((fmax-fmin),N,1);
    PopObj(any(PopObj>r,2),:) = [];
    RefPoint = ones(1,M)*r;
    if isempty(PopObj)
        Score = 0;
    else
        Score = stk_dominatedhv(PopObj,RefPoint);
    end
end