close all
clear all;  ; format long;clc

 load 'GRNoptimized_1F2.mat' Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ 

 sz1=1;;
 sz2=sz1;
 sz3=sz1;
 sz4=sz1;
% sz2_=3/100;
 %sz3=sz3/100;
 sz1_=1;
 sz2_=sz1_;
 sz3_=sz1_;
 %sz4=sz4/100;
 sz4_=sz1_;
    
H=@(x,x0,n,lambda) lambda + (1-lambda)./(1+ (x/x0).^n) ; 

  

 DzT=1;

 a1P=a1/(a1_+g1); a1T=a2/(a2_+g2); a0P=b1/(b1_+g3); a0T=b2/(b2_+g4); 
 a1T2=a3/(a3_+g5); a0T2=b3/(b3_+g6);
%  
g1T=g2/g2_;
g0T=g4/g4_;
g1P=g1/g1_;
g0P=g3/g3_;
g1T2=g5/g5_;
g0T2=g6/g6_;

 
 
h=0;
tic
  Zr=[linspace(0,10,3000) linspace(10.1,100,200)  linspace(100.1,200,50) ];
NZ=length(Zr);
nPRC=[  1 0 1 0 1   ];
nKMT=[  1 1 0 0 1 ];
nKMT2=[ 1 1 1 1 0 ];
   par=[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ ];

 clear PromoterMAPapprox 
for i=1:5

 
 



  

    PT=1*Ptotal*nPRC(i);
KT=Ktotal*nKMT(i);
    K2T=1*K2total*nKMT2(i);
 
 
 

parfor j=1:NZ
    PromoterMAPapprox(i,j)=PromoterMAPV10((Zr(j)/1)^1,PT,KT,K2T,par);

end
 
[fitted,s,lambda,z0]=PromoterMAPfitted(PT,KT,K2T,1,par);
[nPRC(i) nKMT(i) nKMT2(i)]
 
 Psipar(i,:)=[s lambda z0];

   fits(i,:)=fitted(Zr);

end
 Psipar
save promotermapdata.mat PromoterMAPapprox Zr

toc
  s