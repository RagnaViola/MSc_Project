function [ Marginal, Transitional, Diff_Marginal ] = Make_probabilities( block )
%UNTITLED2 make the probabilities
%   at the moment it just goes through them in order

%block=2
count=block;

relative_frequencies_1 = [[0.1255    0.1162    0.2767    0.2630    0.2187]
[0.1109    0.1554    0.2888    0.1677    0.2772]
[0.1802    0.1670    0.1466    0.3705    0.1356]
[0.1630    0.1690    0.1320    0.1220    0.4140]
[0.2641    0.1347    0.1476    0.3049    0.1487]
[0.1504    0.2196    0.3171    0.1412    0.1717]
[0.1666    0.2728    0.2232    0.1314    0.2059]
[0.1408    0.3656    0.1655    0.2166    0.1114]
[0.1279    0.3744    0.1134    0.1910    0.1933]
[0.1139    0.2664    0.1341    0.1273    0.3583]];

relative_frequencies_2 = [[0.1288    0.1863    0.1203    0.1972    0.3675]
[0.3248    0.1429    0.1370    0.1354    0.2600]
[0.2244    0.3186    0.1317    0.1606    0.1647]
[0.1980    0.3094    0.1507    0.2029    0.1389]
[0.2342    0.1236    0.1283    0.1880    0.3259]
[0.2257    0.1031    0.2546    0.1559    0.2607]
[0.2324    0.2315    0.1726    0.1556    0.2079]
[0.2006    0.1176    0.2672    0.1379    0.2767]
[0.1881    0.1027    0.3489    0.2074    0.1529]
[0.3340    0.1497    0.1461    0.2474    0.1228]];

Marginal_1=relative_frequencies_1(count,:);
Marginal=[Marginal_1;Marginal_1;Marginal_1;Marginal_1;Marginal_1];
Transitional=transitionFromMarginal(Marginal_1);
Diff_Marginal_1=relative_frequencies_2(count,:);
Diff_Marginal=[Diff_Marginal_1;Diff_Marginal_1;Diff_Marginal_1;Diff_Marginal_1;Diff_Marginal_1];


end
