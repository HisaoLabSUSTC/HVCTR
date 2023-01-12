function Offspring = FEP(Population)
%FEP - Fast evolutionary programming operator.
%
%   Off = FEP(P) returns the offsprings generated by fast evolutionary
%   programming, where P is the population. P MUST BE an array of
%   INDIVIDUAL objects, and Off is also an array of INDIVIDUAL objects.
%   Each object of P is used to generate one offspring.
%
%   Example:
%       Off = FEP(Population)

%------------------------------- Reference --------------------------------
% X. Yao, Y. Liu, and G. Lin, Evolutionary programming made faster, IEEE
% Transactions on Evolutionary Computation, 1999, 3(2): 82-102.
%------------------------------- Copyright --------------------------------
% Copyright (c) 2018-2019 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    %% Parameter setting
    PopulationDec = Population.decs;
    [N,D]         = size(PopulationDec);
    PopulationEta = Population.adds(rand(N,D));
    
    %% Fast evolutionary programming
    tau  = 1/sqrt(2*sqrt(D));
    tau1 = 1/sqrt(2*D);
    GaussianRand  = repmat(randn(N,1),1,D);
    GaussianRandj = randn(N,D);
    CauchyRandj   = trnd(1,N,D);
    OffDec        = PopulationDec + PopulationEta.*CauchyRandj;
    OffEta        = PopulationEta.*exp(tau1*GaussianRand+tau*GaussianRandj);
    Offspring     = INDIVIDUAL(OffDec,OffEta);
end