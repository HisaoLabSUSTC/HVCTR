Hypervolume-Based Cooperative Coevolution with Two Reference Points for Multi-Objective Optimization
This document provides information on the source code and data associated with the following paper:

Lie Meng Pang, Hisao Ishibuchi, Linjun He, Ke Shang, and Longcan Chen, "Hypervolume-based Cooperative Coevolution with Two Reference Points for Multi-Objective Optimization", under review.

All the experiments in this paper were performed on the PlatEMO v2.9.0 platform.
A PC equipped with AMD Ryzen Threadripper 3990X 64-Core Processor@2.90 GHz, 256GB RAM and Microsoft Window 10 Pro was used for the experiments.

In the repository, you will find two folders.
The first folder "Section II-B and IV-A" corresponds to the source code and experimental settings used in Section II-B and IV in the paper.
The second folder "Section IV-B-D" corresponds to the source code and experimental settings used in Section IV-B to Section IV-D in the paper.
For each folder, the experimental settings and raw data are available in the "Data" subfolder.
The algorithms are available in the "Algorithm" subfolder.

"Section II-B and IV-A" Folder
The metric "HV_R1" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space.
The metric "HV_R11" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space.
The metric "HV_R12" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space.
The metric "HV_R15" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space.
The metric "HV_R2" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space.
The metric "HV_R5" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space.
The metric "HV_R100" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space.
The metric "HV_Ropt" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space.

In Section II.B, we used the SMS-EMOA algorithm with nine different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems.

The name for each of the nine SMS-EMOA variants is indicated in parentheses ( ), as follows:

SMS-EMOA with r = znad x 1 in the normalized objective space (SMSEMOA_NR1T)
SMS-EMOA with r = znad x 1.1 in the normalized objective space (SMSEMOA_NR11T)
SMS-EMOA with r = znad x 2 in the normalized objective space (SMSEMOA_NR2T)
SMS-EMOA with r = znad x 5 in the normalized objective space (SMSEMOA_NR5T)
SMS-EMOA with r = znad x 100 in the normalized objective space (SMSEMOA_NR100T)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
SMS-EMOA with r = znad x 1.1 in the original objective space (SMSEMOA_OriT11)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad + 100 in the original objective space (SMSEMOA_OriP100)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionII_B.mat

In Section IV.A, we compared the proposed HVCTR algorithm and the SMS-EMOA with different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems.

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR)
SMS-EMOA with r = znad x 1 in the normalized objective space (SMSEMOA_NR1T)
SMS-EMOA with r = znad x 1.1 in the normalized objective space (SMSEMOA_NR11T)
SMS-EMOA with r = znad x 2 in the normalized objective space (SMSEMOA_NR2T)
SMS-EMOA with r = znad x 5 in the normalized objective space (SMSEMOA_NR5T)
SMS-EMOA with r = znad x 100 in the normalized objective space (SMSEMOA_NR100T)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
SMS-EMOA with r = znad x 1.1 in the original objective space (SMSEMOA_OriT11)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad + 100 in the original objective space (SMSEMOA_OriP100)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionIV_A.mat

"Section IV-B-D" Folder
The metric "HV_R1" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space.
The metric "HV_R11" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space.
The metric "HV_R12" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space.
The metric "HV_R15" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space.
The metric "HV_R2" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space.
The metric "HV_R5" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space.
The metric "HV_R100" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space.
The metric "HV_Ropt" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space.

For the three-objective 500-items knapsack problem only:
The metric "NHVR1MOKP" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space.
The metric "NHVR11MOKP" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space.
The metric "NHVR12MOKP" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space.
The metric "NHVR15MOKP" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space.
The metric "NHVR2MOKP" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space.
The metric "NHVR5MOKP" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space.
The metric "NHVR100MOKP" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space.
The metric "NHVROptMOKP" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space.

In Section IV.B, we compared the proposed HVCTR algorithm with six state-of-the-art EMO algorithms on the three-objective DTLZ1-4 and Minus-DTZL1-4 test problems.
They are SMS-EMOA, HypE, R2HCA-EMOA, SPEA2+SDE, NSGA-II/SDR, and MaOEA/IGD.
For SMS-EMOA and HypE, in addition to their original implementations (i.e., their default reference point specifications), in our experiments, we also examine the performance of SMS-EMOA and HypE with the reference point r = (r*, r*, ..., r*).
Thus, in this section, we have a total of nine algorithms.

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
HypE with r = (2000, 2000, ..., 2000) (HypEOri)
HypE with r = znad x r* in the normalized objective space (HypENormR)
R2HCA-EMOA (R2HCAEMOA)
SPEA2+SDE (SPEA2SDE)
NSGA-II/SDR (NSGAIISDR)
MaOEA/IGD (MaOEAIGD)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_B.mat

In Section IV.C, we examine the performance of the algorithms on a three-objective 500-item knapsack problem.
In addition to the previous nine algorithms, we also examine the performance of MOEA/D with the weighted sum function (MOEA/D-WS).
Thus, in this section, we have a total of 10 algorithms.
In this experiment, the one-point crossover with probability 1 and the bit-flip mutation with probability 1/500 are used.

HVCTR (HVCTROX)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_OriOX)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOX)
HypE with r = (2000, 2000, ..., 2000) (HypEOriOX)
HypE with r = znad x r* in the normalized objective space (HypENormROX)
R2HCA-EMOA (R2HCAEMOAOX)
SPEA2+SDE (SPEA2SDEOX)
NSGA-II/SDR (NSGAIISDROX)
MaOEA/IGD (MaOEAIGDOX)
MOEA/D-WS (MOEADWSOX)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C.mat

In addtion, we also use the following settings to examine the effects of different crossover and mutation settings as well as the use of a similarity-based mating scheme on the performance of the EMO algorithms for the three-objective 500-items knapsack problem.

(More details can be found in Table S53 in the supplementary file)
Setting 1 (The use of uniform crossover and bitflip mutation. The crossover probability is 1 and the mutation probability is 1/500)
The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
HypE with r = (2000, 2000, ..., 2000) (HypEOri)
HypE with r = znad x r* in the normalized objective space (HypENormR)
R2HCA-EMOA (R2HCAEMOA)
SPEA2+SDE (SPEA2SDE)
NSGA-II/SDR (NSGAIISDR)
MaOEA/IGD (MaOEAIGD)
MOEA/D-WS (MOEADWS)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting1.mat

Setting 2 (The use of uniform crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500)

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTRv1)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Oriv1)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTv1)
HypE with r = (2000, 2000, ..., 2000) (HypEOriv1)
HypE with r = znad x r* in the normalized objective space (HypENormRv1)
R2HCA-EMOA (R2HCAEMOAv1)
SPEA2+SDE (SPEA2SDEv1)
NSGA-II/SDR (NSGAIISDRv1)
MaOEA/IGD (MaOEAIGDv1)
MOEA/D-WS (MOEADWSv1)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting2.mat

Setting 3 (The use of onepoint crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500)

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTROXv1)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_OriOXv1)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOXv1)
HypE with r = (2000, 2000, ..., 2000) (HypEOriOXv1)
HypE with r = znad x r* in the normalized objective space (HypENormROXv1)
R2HCA-EMOA (R2HCAEMOAOXv1)
SPEA2+SDE (SPEA2SDEOXv1)
NSGA-II/SDR (NSGAIISDROXv1)
MaOEA/IGD (MaOEAIGDOXv1)
MOEA/D-WS (MOEADWSOXv1)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting3.mat

Setting 4 (The use of MOEA/D with a large neighborhood size. Other compared algorithms follow their default settings as in Setting 1.)

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
HypE with r = (2000, 2000, ..., 2000) (HypEOri)
HypE with r = znad x r* in the normalized objective space (HypENormR)
R2HCA-EMOA (R2HCAEMOA)
SPEA2+SDE (SPEA2SDE)
NSGA-II/SDR (NSGAIISDR)
MaOEA/IGD (MaOEAIGD)
MOEA/D-WS (MOEADWS_NOSMS)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting4.mat

Setting 5 (The use of a similarity-based mating scheme in each of the compared algorithms except for MOEA/D-WS)

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR_SMS)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_OriSMS)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTSMS)
HypE with r = (2000, 2000, ..., 2000) (HypEOri_SMS)
HypE with r = znad x r* in the normalized objective space (HypENormR_SMS)
R2HCA-EMOA (R2HCAEMOA_SMS)
SPEA2+SDE (SPEA2SDE_SMS)
NSGA-II/SDR (NSGAIISDR_SMS)
MaOEA/IGD (MaOEAIGD_SMS)
MOEA/D-WS (MOEADWS)
To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting5.mat

In Section IV.D, the performance of HVCTR is examined on a real-world problem suite (i.e., RE problems).

The names for each of the compared algorithms is indicated in parentheses ( ), as follows:

HVCTR (HVCTR)
SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
HypE with r = (2000, 2000, ..., 2000) (HypEOri)
HypE with r = znad x r* in the normalized objective space (HypENormR)
R2HCA-EMOA (R2HCAEMOA)
SPEA2+SDE (SPEA2SDE)
NSGA-II/SDR (NSGAIISDR)
MaOEA/IGD (MaOEAIGD)
To retrieve the experimental result, please use the following experimental settings:
Three-objective problems:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ThreeObjective.mat

Many-objective problems：
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ManyObjective.mat

Ablation studies (in Folder Section II-B and IV-A):
We have conducted several ablation studies, as follows:

HVCTR-Ablation1: This version employs P1 with r_small and P2 with r_large. (HVCTR_Ablation1)
HVCTR-Ablation2: In this version, both the offspring o1 and o2 are generated from parents randomly chosen from the entire population. (HVCTR_Ablation2)
HVCTR-Ablation3: In this version, the offspring o1 is generated from parents randomly chosen from the subpopulation P1, whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2. (HVCTR_Ablation3)
HVCTR-Ablation4: In this version, the offspring o1 is generated from parents randomly chosen from the entire population P, whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2. (HVCTR_Ablation4)
Variant with no information exchange: In this variant, the two subpopulations P1 and P2 were evolved separately using r_large and r_small, respectively. The subpopulations were combined at the end of the evolutionary process.They do not share the same estimated nadir and ideal points. (HVCTR_Ablation_nointeraction)
Variant with no cooperative coevolution: In this variant, the subpopulations P1 and P2 were evolved separately using r_large and r_small, respectively, and were combined at the end of the evolutionary process. (HVCTR_Ablation)
To retrieve the experimental result, please use the following experimental settings:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation1.mat
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation234.mat
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation_WithoutInteraction.mat

If you have any questions related to this document, please feel free to contact Lie Meng Pang (email: panglm@sustech.edu.cn).
Thank you very much!