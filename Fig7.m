clear all
close all
format shortG
addpath('additional_files')

  load 'competitioncircuitparameters.mat' Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ 
  sz1=1;; sz2=sz1; sz3=sz1; sz4=sz1;
 
 sz1_=1; sz2_=sz1_; sz3_=sz1_; sz4_=sz1_;



 
 
  par=[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ ];

 
 syms P K K2 X %PT KT K2T
 
 N=50;
 %%% gradual PRC2 depletion
partition=linspace(0,1,N); 
 
D_unmodified=zeros(N,1);
D_active=zeros(N,1);
D_silenced=zeros(N,1);

  parfor qq=1:N
 
 PT=Ptotal*partition(qq);KT=Ktotal;K2T=K2total;
 


 
  
  
     [D,P,K,K2,Dz00,Dz_0,Dz10,Dzp0,Dzk0,Dzk20,Dz0z,Dz1z,Dzkz,Dzk2z] =PromoterMAPV10(0,PT,KT,K2T,par);
 
 D_unmodified(qq)=(Dz00) ;
 D_nozeb=Dz10+Dzk0+Dzk20;
 D_zeb=Dz1z+Dzkz+Dzk2z+Dz0z;

 D_active(qq)= 1*(D_nozeb)+D_zeb;
     D_silenced(qq)=1-D_active(qq)-D_unmodified(qq);
   
 end
     subplot(1,3,1)
        area(partition,[D_unmodified D_active D_silenced]); 
        %title("gradual KMT2D knockout")
% title("gradual PRC2 knockout")

xlabel('PRC2 presence fraction')
%xlabel('KMT2D presence fraction')

ylabel('PRE/TRE state')
legend('Unmodified','Activated','Silenced')
 axis([0 1 0 1])
        
        
        
        
 %%% gradual KMT2D depletion
 partition=linspace(0,1,N); 
 
D_unmodified=zeros(N,1);
D_active=zeros(N,1);
D_silenced=zeros(N,1);

  parfor qq=1:N
 
 PT=Ptotal;KT=Ktotal*partition(qq);K2T=K2total;
 


 
  
  
     [D,P,K,K2,Dz00,Dz_0,Dz10,Dzp0,Dzk0,Dzk20,Dz0z,Dz1z,Dzkz,Dzk2z] =PromoterMAPV10(0,PT,KT,K2T,par);
 
 D_unmodified(qq)=(Dz00) ;
 D_nozeb=Dz10+Dzk0+Dzk20;
 D_zeb=Dz1z+Dzkz+Dzk2z+Dz0z;

 D_active(qq)= 1*(D_nozeb)+D_zeb;
     D_silenced(qq)=1-D_active(qq)-D_unmodified(qq);
   
  end
  
        
        
          subplot(1,3,3)

        area(partition,[D_unmodified D_active D_silenced]); 
  xlabel('KMT2D presence fraction')

ylabel('PRE/TRE state')
legend('Unmodified','Activated','Silenced')
 axis([0 1 0 1])
 
 
 Ktotal=Ktotal/3;
  par=[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ ];

 
 syms P K K2 X %PT KT K2T
 
 N=50;
 %%% gradual PRC2 depletion
partition=linspace(0,1,N); 
 
D_unmodified=zeros(N,1);
D_active=zeros(N,1);
D_silenced=zeros(N,1);

  parfor qq=1:N
 
 PT=Ptotal*partition(qq);KT=Ktotal;K2T=K2total;
 


 
  
  
     [D,P,K,K2,Dz00,Dz_0,Dz10,Dzp0,Dzk0,Dzk20,Dz0z,Dz1z,Dzkz,Dzk2z] =PromoterMAPV10(0,PT,KT,K2T,par);
 
 D_unmodified(qq)=(Dz00) ;
 D_nozeb=Dz10+Dzk0+Dzk20;
 D_zeb=Dz1z+Dzkz+Dzk2z+Dz0z;

 D_active(qq)= 1*(D_nozeb)+D_zeb;
     D_silenced(qq)=1-D_active(qq)-D_unmodified(qq);
   
 end
     subplot(1,3,2)
        area(partition,[D_unmodified D_active D_silenced]); 
        xlabel('PRC2 presence fraction')
%xlabel('KMT2D presence fraction')

ylabel('PRE/TRE state')
legend('Unmodified','Activated','Silenced')
 axis([0 1 0 1])
        
        
        
