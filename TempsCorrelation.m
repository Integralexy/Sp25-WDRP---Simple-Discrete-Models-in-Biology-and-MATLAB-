S = 0.1*table2array(readtable("SeattleTemp.csv"));
D = 0.1*table2array(readtable("DiabloTemp.csv"));
F = 0.1*table2array(readtable("ForksTemp.csv"));

Savg = Transpose(S(1:366,1));
Smax = Transpose(S(1:366,1));
Smin = Transpose(S(1:366,1));

Davg = Transpose(D(1:366,1));
Dmax = Transpose(D(1:366,1));
Dmin = Transpose(D(1:366,1));

Favg = Transpose(F(1:366,1));
Fmax = Transpose(F(1:366,1));
Fmin = Transpose(F(1:366,1));
