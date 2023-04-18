# HVCTR
Hypervolume-Based Cooperative Coevolution with Two Reference Points for Multi-Objective Optimization <br>
This document provides information on the source code and data associated with the following paper:<br>

Lie Meng Pang, Hisao Ishibuchi, Linjun He, Ke Shang, and Longcan Chen, "Hypervolume-based Cooperative Coevolution with Two Reference Points for Multi-Objective Optimization", under review. <br>

All the experiments in this paper are performed on the PlatEMO v2.9.0 platform. <br>
In the repository, you will find two folders. <br>
The first folder "Section II-B and IV-A" corresponds to the source code and experimental settings used in Section II-B and IV in the paper. <br>
The second folder "Section IV-B-D" corresponds to the source code and experimental settings used in Section IV-B to Section IV-D in the paper.<br> 
For each folder, the experimental settings and raw data are available in the "Data" subfolder. <br>
The algorithms are available in the "Algorithm" subfolder. <br>

**"Section II-B and IV-A" Folder**<br>
The metric "HV_R1" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space. <br>
The metric "HV_R11" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space. <br>
The metric "HV_R12" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space. <br>
The metric "HV_R15" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space. <br>
The metric "HV_R2" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space.<br> 
The metric "HV_R5" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space. <br>
The metric "HV_R100" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space. <br>
The metric "HV_Ropt" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space.<br> 


In Section II.B, we used the SMS-EMOA algorithm with nine different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems.  <br>

The name for each of the nine SMS-EMOA variants is indicated in parentheses ( ), as follows: <br>
1. SMS-EMOA with r = znad x 1 in the normalized objective space (SMSEMOA_NR1T)<br>
2. SMS-EMOA with r = znad x 1.1 in the normalized objective space (SMSEMOA_NR11T)<br>
3. SMS-EMOA with r = znad x 2 in the normalized objective space (SMSEMOA_NR2T)<br>
4. SMS-EMOA with r = znad x 5 in the normalized objective space (SMSEMOA_NR5T)<br>
5. SMS-EMOA with r = znad x 100 in the normalized objective space (SMSEMOA_NR100T)<br>
6. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
7. SMS-EMOA with r = znad x 1.1 in the original objective space (SMSEMOA_OriT11)<br>
8. SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)<br>
9. SMS-EMOA with r = znad + 100 in the original objective space (SMSEMOA_OriP100)<br>

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionII_B.mat


In Section IV.A, we compared the proposed HVCTR algorithm and the SMS-EMOA with different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems. 

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR (HVCTR)
2. SMS-EMOA with r = znad x 1 in the normalized objective space (SMSEMOA_NR1T)
3. SMS-EMOA with r = znad x 1.1 in the normalized objective space (SMSEMOA_NR11T)
4. SMS-EMOA with r = znad x 2 in the normalized objective space (SMSEMOA_NR2T)
5. SMS-EMOA with r = znad x 5 in the normalized objective space (SMSEMOA_NR5T)
6. SMS-EMOA with r = znad x 100 in the normalized objective space (SMSEMOA_NR100T)
7. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
8. SMS-EMOA with r = znad x 1.1 in the original objective space (SMSEMOA_OriT11)
9. SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)
10. SMS-EMOA with r = znad + 100 in the original objective space (SMSEMOA_OriP100)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionIV_A.mat



**"Section IV-B-D" Folder** 
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
For SMS-EMOA and HypE, in addition to their original implementations (i.e., their default reference point specifications), 
in our experiments, we also examine the performance of SMS-EMOA and HypE with the reference point r = (r*, r*, ..., r*). 
Thus, in this section, we have a total of nine algorithms.
 
The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTR)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)
5. HypE with r = znad x r* in the normalized objective space (HypENormR) 
6. R2HCA-EMOA  (R2HCAEMOA)
7. SPEA2+SDE (SPEA2SDE)
8. NSGA-II/SDR (NSGAIISDR)
9. MaOEA/IGD  (MaOEAIGD)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_B.mat

In Section IV.C, we examine the performance of the algorithms on a three-objective 500-item knapsack problem. 
In addition to the previous nine algorithms, we also examine the performance of MOEA/D with the weighted sum function (MOEA/D-WS). 
Thus, in this section, we have a total of 10 algorithms. 
In this experiment, the one-point crossover with probability 1 and the bit-flip mutation with probability 1/500 are used. 
1. HVCTR  (HVCTROX)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriOX)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOX)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriOX)
5. HypE with r = znad x r* in the normalized objective space (HypENormROX) 
6. R2HCA-EMOA  (R2HCAEMOAOX)
7. SPEA2+SDE (SPEA2SDEOX)
8. NSGA-II/SDR (NSGAIISDROX)
9. MaOEA/IGD  (MaOEAIGDOX)
10. MOEA/D-WS (MOEADWSOX)


To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C.mat


In addtion, we also use the following settings to examine the effects of different crossover and mutation settings 
as well as the use of a similarity-based mating scheme on the performance of the EMO algorithms for the three-objective 500-items knapsack problem. 

(More details can be found in Table S53 in the supplementary file)
**Setting 1** (The use of uniform crossover and bitflip mutation. The crossover probability is 1 and the mutation probability is 1/500) 
The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTR)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)
5. HypE with r = znad x r* in the normalized objective space (HypENormR) 
6. R2HCA-EMOA  (R2HCAEMOA)
7. SPEA2+SDE (SPEA2SDE)
8. NSGA-II/SDR (NSGAIISDR)
9. MaOEA/IGD  (MaOEAIGD)
10. MOEA/D-WS (MOEADWS)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting1.mat


**Setting 2** (The use of uniform crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500) 

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTRv1)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Oriv1)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTv1)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriv1)
5. HypE with r = znad x r* in the normalized objective space (HypENormRv1) 
6. R2HCA-EMOA  (R2HCAEMOAv1)
7. SPEA2+SDE (SPEA2SDEv1)
8. NSGA-II/SDR (NSGAIISDRv1)
9. MaOEA/IGD  (MaOEAIGDv1)
10. MOEA/D-WS (MOEADWSv1)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting2.mat

**Setting 3** (The use of onepoint crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500) 

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTROXv1)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriOXv1)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOXv1)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriOXv1)
5. HypE with r = znad x r* in the normalized objective space (HypENormROXv1) 
6. R2HCA-EMOA  (R2HCAEMOAOXv1)
7. SPEA2+SDE (SPEA2SDEOXv1)
8. NSGA-II/SDR (NSGAIISDROXv1)
9. MaOEA/IGD  (MaOEAIGDOXv1)
10. MOEA/D-WS (MOEADWSOXv1)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting3.mat

**Setting 4** (The use of MOEA/D with a large neighborhood size. Other compared algorithms follow their default settings as in Setting 1. )

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTR)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)
5. HypE with r = znad x r* in the normalized objective space (HypENormR) 
6. R2HCA-EMOA  (R2HCAEMOA)
7. SPEA2+SDE (SPEA2SDE)
8. NSGA-II/SDR (NSGAIISDR)
9. MaOEA/IGD  (MaOEAIGD)
10. MOEA/D-WS (MOEADWS_NOSMS)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting4.mat

**Setting 5** (The use of a similarity-based mating scheme in each of the compared algorithms except for MOEA/D-WS)

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTR_SMS)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriSMS)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTSMS)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri_SMS)
5. HypE with r = znad x r* in the normalized objective space (HypENormR_SMS) 
6. R2HCA-EMOA  (R2HCAEMOA_SMS)
7. SPEA2+SDE (SPEA2SDE_SMS)
8. NSGA-II/SDR (NSGAIISDR_SMS)
9. MaOEA/IGD  (MaOEAIGD_SMS)
10. MOEA/D-WS (MOEADWS)

To retrieve the experimental result, please use the following experimental setting:
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting5.mat

In Section IV.D, the performance of HVCTR is examined on a real-world problem suite (i.e., RE problems). 

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: 
1. HVCTR  (HVCTR)
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)
5. HypE with r = znad x r* in the normalized objective space (HypENormR) 
6. R2HCA-EMOA  (R2HCAEMOA)
7. SPEA2+SDE (SPEA2SDE)
8. NSGA-II/SDR (NSGAIISDR)
9. MaOEA/IGD  (MaOEAIGD)

To retrieve the experimental result, please use the following experimental settings:
Three-objective problems: 
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ThreeObjective.mat

Many-objective problems：
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ManyObjective.mat


**Ablation studies (in Folder Section II-B and IV-A):** 
We have conducted several ablation studies, as follows: 
- HVCTR-Ablation1: This version employs P1 with r_small and P2 with r_large. 
- HVCTR-Ablation2: In this version, both the offspring o1 and o2 are generated from parents randomly chosen from the entire population.
- HVCTR-Ablation3: In this version, the offspring o1 is generated from parents randomly chosen from the subpopulation P1, 
whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2.
- HVCTR-Ablation4: In this version, the offspring o1 is generated from parents randomly chosen from the entire population P, 
whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2. 
- HVCTR without the proposed environmental selection: In this version, the subpopulations P1 and P2 were evolved separately using r_large and r_small, respectively, 
and were combined at the end of the evolutionary process. 

To retrieve the experimental result, please use the following experimental settings:
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation1.mat
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation234.mat
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation_WithouttheProposedEnvSel.mat


If you have any questions related to this document, please feel free to contact Lie Meng Pang (email: panglm@sustech.edu.cn).
Thank you very much!

