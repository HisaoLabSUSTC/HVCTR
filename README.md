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


In **Section II.B**, we used the SMS-EMOA algorithm with nine different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems.  <br>

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

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionII_B.mat<br>


In **Section IV.A**, we compared the proposed HVCTR algorithm and the SMS-EMOA with different specifications of reference points on the three-objective DTLZ1, DTLZ2, Minus-DTLZ1, and Minus-DTLZ2 problems. <br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR (HVCTR)<br>
2. SMS-EMOA with r = znad x 1 in the normalized objective space (SMSEMOA_NR1T)<br>
3. SMS-EMOA with r = znad x 1.1 in the normalized objective space (SMSEMOA_NR11T)<br>
4. SMS-EMOA with r = znad x 2 in the normalized objective space (SMSEMOA_NR2T)<br>
5. SMS-EMOA with r = znad x 5 in the normalized objective space (SMSEMOA_NR5T)<br>
6. SMS-EMOA with r = znad x 100 in the normalized objective space (SMSEMOA_NR100T)<br>
7. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
8. SMS-EMOA with r = znad x 1.1 in the original objective space (SMSEMOA_OriT11)<br>
9. SMS-EMOA with r = znad + 1 in the original objective space (SMSEMOA_Ori)<br>
10. SMS-EMOA with r = znad + 100 in the original objective space (SMSEMOA_OriP100)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_SectionIV_A.mat<br>



**"Section IV-B-D" Folder** <br>
The metric "HV_R1" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space. <br>
The metric "HV_R11" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space. <br>
The metric "HV_R12" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space. <br>
The metric "HV_R15" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space. <br>
The metric "HV_R2" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space. <br>
The metric "HV_R5" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space. <br>
The metric "HV_R100" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space. <br>
The metric "HV_Ropt" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space. <br>

For the three-objective 500-items knapsack problem only:<br>
The metric "NHVR1MOKP" correponds to the HV calculation using reference point (1, ..., 1) in the normalized space. <br>
The metric "NHVR11MOKP" correponds to the HV calculation using reference point (1.1, ..., 1.1) in the normalized space. <br>
The metric "NHVR12MOKP" correponds to the HV calculation using reference point (1.2, ..., 1.2) in the normalized space. <br>
The metric "NHVR15MOKP" correponds to the HV calculation using reference point (1.5, ..., 1.5) in the normalized space. <br>
The metric "NHVR2MOKP" correponds to the HV calculation using reference point (2, ..., 2) in the normalized space. <br>
The metric "NHVR5MOKP" correponds to the HV calculation using reference point (5, ..., 5) in the normalized space. <br>
The metric "NHVR100MOKP" correponds to the HV calculation using reference point (100, ..., 100) in the normalized space. <br>
The metric "NHVROptMOKP" correponds to the HV calculation using reference point (r*, ..., r*) in the normalized space. <br>

In **Section IV.B**, we compared the proposed HVCTR algorithm with six state-of-the-art EMO algorithms on the three-objective DTLZ1-4 and Minus-DTZL1-4 test problems. <br>
They are SMS-EMOA, HypE, R2HCA-EMOA, SPEA2+SDE, NSGA-II/SDR, and MaOEA/IGD. <br>
For SMS-EMOA and HypE, in addition to their original implementations (i.e., their default reference point specifications), 
in our experiments, we also examine the performance of SMS-EMOA and HypE with the reference point r = (r*, r*, ..., r*).<br> 
Thus, in this section, we have a total of nine algorithms.<br>
 
The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTR)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormR) <br>
6. R2HCA-EMOA  (R2HCAEMOA)<br>
7. SPEA2+SDE (SPEA2SDE)<br>
8. NSGA-II/SDR (NSGAIISDR)<br>
9. MaOEA/IGD  (MaOEAIGD)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_B.mat<br>

In **Section IV.C**, we examine the performance of the algorithms on a three-objective 500-item knapsack problem. <br>
In addition to the previous nine algorithms, we also examine the performance of MOEA/D with the weighted sum function (MOEA/D-WS). <br>
Thus, in this section, we have a total of 10 algorithms. <br>
In this experiment, the one-point crossover with probability 1 and the bit-flip mutation with probability 1/500 are used. <br>
1. HVCTR  (HVCTROX)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriOX)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOX)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriOX)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormROX) <br>
6. R2HCA-EMOA  (R2HCAEMOAOX)<br>
7. SPEA2+SDE (SPEA2SDEOX)<br>
8. NSGA-II/SDR (NSGAIISDROX)<br>
9. MaOEA/IGD  (MaOEAIGDOX)<br>
10. MOEA/D-WS (MOEADWSOX)<br>


To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C.mat<br>


In addtion, we also use the following settings to examine the effects of different crossover and mutation settings 
as well as the use of a similarity-based mating scheme on the performance of the EMO algorithms for the three-objective 500-items knapsack problem. <br>

(More details can be found in Table S53 in the supplementary file)<br>
**Setting 1** (The use of uniform crossover and bitflip mutation. The crossover probability is 1 and the mutation probability is 1/500) <br>
The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTR)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormR) <br>
6. R2HCA-EMOA  (R2HCAEMOA)<br>
7. SPEA2+SDE (SPEA2SDE)<br>
8. NSGA-II/SDR (NSGAIISDR)<br>
9. MaOEA/IGD  (MaOEAIGD)<br>
10. MOEA/D-WS (MOEADWS)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting1.mat<br>


**Setting 2** (The use of uniform crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500) <br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTRv1)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Oriv1)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTv1)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriv1)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormRv1) <br>
6. R2HCA-EMOA  (R2HCAEMOAv1)<br>
7. SPEA2+SDE (SPEA2SDEv1)<br>
8. NSGA-II/SDR (NSGAIISDRv1)<br>
9. MaOEA/IGD  (MaOEAIGDv1)<br>
10. MOEA/D-WS (MOEADWSv1)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting2.mat<br>

**Setting 3** (The use of onepoint crossover and bitflip mutation. The crossover probability is 0.5 and the mutation probability is 3/500) <br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTROXv1)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriOXv1)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTOXv1)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOriOXv1)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormROXv1) <br>
6. R2HCA-EMOA  (R2HCAEMOAOXv1)<br>
7. SPEA2+SDE (SPEA2SDEOXv1)<br>
8. NSGA-II/SDR (NSGAIISDROXv1)<br>
9. MaOEA/IGD  (MaOEAIGDOXv1)<br>
10. MOEA/D-WS (MOEADWSOXv1)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting3.mat<br>

**Setting 4** (The use of MOEA/D with a large neighborhood size. Other compared algorithms follow their default settings as in Setting 1.)<br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTR)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormR) <br>
6. R2HCA-EMOA  (R2HCAEMOA)<br>
7. SPEA2+SDE (SPEA2SDE)<br>
8. NSGA-II/SDR (NSGAIISDR)<br>
9. MaOEA/IGD  (MaOEAIGD)<br>
10. MOEA/D-WS (MOEADWS_NOSMS)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting4.mat<br>

**Setting 5** (The use of a similarity-based mating scheme in each of the compared algorithms except for MOEA/D-WS)<br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTR_SMS)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_OriSMS)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPTSMS)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri_SMS)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormR_SMS) <br>
6. R2HCA-EMOA  (R2HCAEMOA_SMS)<br>
7. SPEA2+SDE (SPEA2SDE_SMS)<br>
8. NSGA-II/SDR (NSGAIISDR_SMS)<br>
9. MaOEA/IGD  (MaOEAIGD_SMS)<br>
10. MOEA/D-WS (MOEADWS)<br>

To retrieve the experimental result, please use the following experimental setting:<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_C_Setting5.mat<br>

In **Section IV.D**, the performance of HVCTR is examined on a real-world problem suite (i.e., RE problems). <br>

The names for each of the compared algorithms is indicated in parentheses ( ), as follows: <br>
1. HVCTR  (HVCTR)<br>
2. SMS-EMOA with r = znad + 1 in the original objective space  (SMSEMOA_Ori)<br>
3. SMS-EMOA with r = znad x r* in the normalized objective space (SMSEMOA_NROPT)<br>
4. HypE with r = (2000, 2000, ..., 2000)  (HypEOri)<br>
5. HypE with r = znad x r* in the normalized objective space (HypENormR) <br>
6. R2HCA-EMOA  (R2HCAEMOA)<br>
7. SPEA2+SDE (SPEA2SDE)<br>
8. NSGA-II/SDR (NSGAIISDR)<br>
9. MaOEA/IGD  (MaOEAIGD)<br>

To retrieve the experimental result, please use the following experimental settings:<br>
Three-objective problems: <br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ThreeObjective.mat<br>

Many-objective problems：<br>
HVCTR-Experiments/Section IV-B-D/Data/Setting_SectionIV_D_ManyObjective.mat<br>


**Ablation studies (in Folder Section II-B and IV-A):** <br>
We have conducted several ablation studies, as follows: <br>
- HVCTR-Ablation1: This version employs P1 with r_small and P2 with r_large. (HVCTR_Ablation1) <br>
- HVCTR-Ablation2: In this version, both the offspring o1 and o2 are generated from parents randomly chosen from the entire population. (HVCTR_Ablation2)<br>
- HVCTR-Ablation3: In this version, the offspring o1 is generated from parents randomly chosen from the subpopulation P1, 
whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2. (HVCTR_Ablation3)<br>
- HVCTR-Ablation4: In this version, the offspring o1 is generated from parents randomly chosen from the entire population P, 
whereas the offspring o2 is generated from parents randomly chosen from the subpopulation P2. (HVCTR_Ablation4) <br>
- HVCTR without the proposed environmental selection: In this version, the subpopulations P1 and P2 were evolved separately using r_large and r_small, respectively, 
and were combined at the end of the evolutionary process. (HVCTR_Ablation) <br>

To retrieve the experimental result, please use the following experimental settings:<br>
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation1.mat<br>
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation234.mat<br>
HVCTR-Experiments/Section II-B and IV-A/Data/Setting_Ablation_WithouttheProposedEnvSel.mat<br>


If you have any questions related to this document, please feel free to contact Lie Meng Pang (email: panglm@sustech.edu.cn).<br>
Thank you very much!

