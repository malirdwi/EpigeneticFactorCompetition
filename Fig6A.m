close all
clear all;  ; format long;clc
addpath('additional_files')

 load 'competitioncircuitparameters.mat' Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ 

 sz1=1;;
 sz2=sz1;
 sz3=sz1;
 sz4=sz1;

 sz1_=1;
 sz2_=sz1_;
 sz3_=sz1_;

 sz4_=sz1_;
    
H=@(x,x0,n,lambda) lambda + (1-lambda)./(1+ (x/x0).^n) ; 

  

 DzT=1;

 

 
 
h=0;
tic
  Zr=[linspace(0,1000,1000)  ];
NZ=length(Zr);
nPRC=[  1 0 1 0 1   ];
nKMT=[  1 1 0 0 1 ];
nKMT2=[ 1 1 1 1 0 ];
   par=[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ ];

 clear PromoterMAPapprox 
for i=1:5

 
 



  

    PT=Ptotal*nPRC(i);
KT=Ktotal*nKMT(i);
    K2T=K2total*nKMT2(i);
 
 
 

parfor j=1:NZ
    PromoterMAPapprox(i,j)=PromoterMAPV10((Zr(j)/500)^4,PT,KT,K2T,par);

end
 

end
  
 
 
 
 
    figure,
 plot(Zr,[PromoterMAPapprox],'LineWidth',4)
legend('control','p-ko','k-ko','pk-ko','k2-ko')
 
 
 
 
 
 