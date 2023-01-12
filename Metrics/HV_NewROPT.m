function [Score,PopObj] = HV_NewROPT(PopObj,PF)
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
    if M ==3 
    r=1+1/getH(M,105);
    elseif M ==4 
        r=1+1/getH(M,120); 
    elseif M==6 
        r=1+1/getH(M, 126);
    elseif M==9 
        r=1+1/getH(M,210); 
    end
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