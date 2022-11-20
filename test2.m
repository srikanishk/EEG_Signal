df = csvread('B:\Sem 5\EE321\14\Dataset_EEG.csv'); %#ok<CSVRD> 
X = df(1,:); %Input values

ff = chebyshevTF(14,31*2*pi, 0, 0 ,1, "high");
[a5,b5] = ff.cheby_TF();


blt = Bi_Linear_Transform(0.005);     
[A5,B5] = blt.calcBLT(a5,b5);

Y = filter(A5, B5, X);