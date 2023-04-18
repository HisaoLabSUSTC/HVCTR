function HVCTR_Ablation3(Global)
% <algorithm> <H>
% S metric selection based evolutionary multiobjective optimization
% algorithm
% r_small --- 1 --- reference point 1
% r_large --- 100 --- reference point 2

    %% Parameter setting
    [r_small,r_large] = Global.ParameterSet(1, 100);
    %% Generate random population
    Population1 = Global.Initialization(Global.N);
    Population2 = Global.Initialization(Global.N);
    
    N = Global.N;
    N1 = floor(N /2); 
    N2 = N-N1;
 
    %DSS selection (without non-dominated sorting)
    [~, ind_sel1] = DSS(Population1.objs,N1);
    [~, ind_sel2] = DSS(Population2.objs,N2);
    
    Population1 = Population1(ind_sel1);     
    Population2 = Population2(ind_sel2);       
    Population = [Population1,Population2];
   
    %% Optimization
    while Global.NotTermination(Population)
        for i = 1 : Global.N
            drawnow();

            % Generate offspring1 from parents selected in subpopulation1,
            % and offspring2 from parents selected in subpopulation2
            Offspring1 = GAhalf(Population1(randperm(end,2)));
            Offspring2 = GAhalf(Population2(randperm(end,2))); 
            Offspring = [Offspring1, Offspring2];
            
            % Estimate Zmin and Zmax
            AllPopObj = [Population1.objs; Offspring1.obj;Population2.objs;Offspring2.obj];
            Zmin      = min(AllPopObj,[],1);
            Zmax      = max(AllPopObj,[],1);

            % Update each subpopulation
            [Population1] = EnvSel(Population1,Offspring,Population2,r_large,Zmin,Zmax);
            [Population2] = EnvSel(Population2,Offspring,Population1,r_small,Zmin,Zmax);

            % Merge two populations
            Population = [Population1, Population2];
        end
    end
end

function [Population] = EnvSel(Population,Offspring,Population_aux,r,Zmin,Zmax)

for i =1:2
    Population = [Population, Offspring(i)];
    N     = length(Population);
    %% Identify the solutions in the last front
    AllPopObj = [Population.objs;Population_aux.objs];
    [FrontNo,MaxFNo] = NDSort(AllPopObj,inf);
    while true
        LastFront = find(FrontNo==MaxFNo);
        % Include at least one solution from Population
        if sum(LastFront <= N) > 0
            break;
        end
        MaxFNo = MaxFNo - 1;
    end

    %% Normalize the solutions in the last front
    AllPopObj_last    = AllPopObj(LastFront,:);
    AllPopObj_last_normalized = (AllPopObj_last - Zmin)./(Zmax-Zmin);
 
    [N_last,~]     = size(AllPopObj_last);
    
    %% Calculate the contribution of hypervolume of each solution
    deltaS = CalHVC(AllPopObj_last_normalized,r,N_last);
   %
    %% Set HVC of aux Population to inf
    deltaS(LastFront > N) = inf;
    
    %% Delete the worst solution from the last front
    [~,worst] = min(deltaS,[],'includenan');
    Population(LastFront(worst)) = [];      
 
end
end

function HVC = CalHVC(data,r,PopNum)
 
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


function [B, ind_sel] = DSS(a,sel_num)

if size(a,1)<=sel_num
    B=a; 
    ind_sel = 1: size(a,1);
else  
    %normalization 
    fmax=max(a);
    fmin=min(a);
    anorm=(a-fmin)./(fmax-fmin);
    
    [sz_a, M]=size(a);  
    [~, ind_extreme] = max(a(:,1));
    first_extreme=a(ind_extreme,:); %get the first extreme solution
    
    %initialize B as empty set 
    B=[]; 

    %initialize v and d 
    v=zeros(sz_a, 1);     %zeroes represent false 
    d=ones(sz_a,1)*inf;   %initiliaze distance to a very large number, i.e., inf

    %select first extreme solutions 
    B=[B;first_extreme]; 
    v(ind_extreme)=1; 

    for l=1:sz_a
        if v(l)==0
            d(l)=min(sqrt(sum((anorm(l,:)-anorm(ind_extreme,:)).^2)),d(l));
        end
    end

    sz_B=size(B,1); 
    ind_sel=[];
    ind_sel=[ind_sel;ind_extreme]; 
    %select an isolated solution to B 
    while sz_B < sel_num
        z=find(v==0); 
        max_distance=max(d(z)); 
        j=find(d==max_distance);
        j=j(1);
        B=[B;a(j,:)];
        v(j)=1; 
        d(j)=inf;

        for l=1:sz_a
            if v(l)==0
                d(l)=min(sqrt(sum((anorm(l,:)-anorm(j,:)).^2)),d(l));
            end
        end
        sz_B=size(B,1); 
        ind_sel=[ind_sel;j];
    end   
end
end
