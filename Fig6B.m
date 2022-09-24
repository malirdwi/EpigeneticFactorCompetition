 %close all;
clear all;  ; format shortG; 
tic

addpath('additional_files')

 nPRC=[ 1 0 1 0 1   ];
nKMT=[  1 1 0 0 1 ];
nKMT2=[ 1 1 1 1 0 ];
  load 'competitioncircuitparameters.mat' Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ 
 sz1=1;;
 sz2=sz1;
 sz3=sz1;
 sz4=sz1;

 sz1_=1;
 sz2_=sz1_;
 sz3_=sz1_;
 sz4_=sz1_;

   load promotermapdata.mat %%generated using generatepromotermapinterpolationpoints.m


  par=[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_ ];

 H=@(x,x0,n,lambda) lambda + (1-lambda)./(1+ (x/x0).^n) ; 
 
 tic

 
 
 


  
 sss1=[];
for ko=[1:5]
        KnockoutGain= (ko==1)*1 + (ko==2)*0.09 + (ko==3)*7;

  
X0=[10.^(6*rand(1/2*96,5)-2)]; 
 
NN=size(X0,1);
 nnn=5;
parfor i=1:NN
 
 
 
 X=FIVEgene_feedback_solver_V1_74C(X0(i,:),ko,Zr,PromoterMAPapprox,par);

 
 ZEB(i)=X(1)';
 if(length(X)>2)
   PRRX(i)=X(3)';
    SNAIL(i)=X(4)';
   TGFB(i)=X(5);
 end
 MIR200(i)=X(2);
 

 
end

 
if(nnn>2)
   
X=[ZEB' MIR200' PRRX' SNAIL'  TGFB'];
else
    X=[ZEB' MIR200'];

end
sss=[];
 nprrx=0;
nzeb=0;
for jjj=1:NN
    new=1;
    newz=1;
    newp=1;
 for ll=1:size(sss,1)
     if(norm(X(jjj,1)-sss(ll,1),'Inf')<1)
         
       newz=0;
     end
 
%     
     if(norm(X(jjj,:)-sss(ll,:),'Inf')<1e-2)
       new=0;
       break;
    end
    
 end
 if(newz==1)
        nzeb=nzeb+1;
 end
     if(newp==1)
        nprrx=nprrx+1;
    end
  
 
 if(new==1)
     sss=[sss;X(jjj,:)];
     
 end
end

sortrows(sss)
 [sss1]=[sss1; sortrows(sss)]; 
 if(1)
prrxratio(ko)=  max(sss(:,3))/min(sss(:,3));
zebratio(ko)=max(sss(:,1))/min(sss(:,1));
 end
end
 
figure,
  XX = categorical({'Control','(EED-KO,KMT2D-KO)--SS1','(EED-KO,KMT2D-KO)--SS2','KMT2D-KO'});
   XX = reordercats(XX,{'Control','(EED-KO,KMT2D-KO)--SS1','(EED-KO,KMT2D-KO)--SS2','KMT2D-KO'});
   
   subplot(1,3,1)
   bar(XX,[sss1(1,1) sss1(5:6,1)'  sss1(4,1) ])
   ylabel('Expression Level');
   title('ZEB1')
  %  set(gca,'Yscale','log')
      subplot(1,3,2)
   bar(XX,[sss1(1,3) sss1(5:6,3)'  sss1(4,3) ])
   ylabel('Expression Level');
   title('PRRX1')
  % set(gca,'Yscale','log')
      subplot(1,3,3)
   bar(XX,[sss1(1,4) sss1(5:6,4)'  sss1(4,4) ])
   ylabel('Expression Level');
   title('SNAI1')
 
 save sssFig6.mat sss1
 
 toc
 
 

function [Xe]=FIVEgene_feedback_solver_V1_74C(X0i,ko,Zr,PromoterMAPapprox,par)
pp = num2cell(par);

[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_  ]=pp{1,:};
 

nPRC=[  1 0 1 0 1   ];
nKMT=[  1 1 0 0 1 ];
nKMT2=[ 1 1 1 1 0 ];

   PT=nPRC(ko)*Ptotal;
   KT=nKMT(ko)*Ktotal;
   K2T=nKMT2(ko)*K2total;
 
H=@(x,x0,n,lambda) lambda + (1-lambda)/(1+ (x/x0)^n) ; 
   Lm=@(mu,mu0) (1+(mu/mu0)^2*0)/(1+(mu/mu0))^6;

Ym=@(mu,mu0,c6)(1+2*(mu/mu0)+2*(mu/mu0)^2+3*(mu/mu0)^3+c6*(mu/mu0)^4+c6*(mu/mu0)^5+c6*(mu/mu0)^6)/(1+(mu/mu0))^6; 
 
 
 

  
Z0=5097.411;
R0=1029.996;
 

    
  Hcomp=@(Z,R) InterpolatorV21((Z/Z0)^4+(R/R0)^2,ko,Zr,PromoterMAPapprox,par);
   MU0=20;
 Hz=@(Z,MU,S,R)H(S,500,2,2)* Hcomp(Z,R)/Ym(MU,MU0,3);
 Zdot=@(Z,MU,S,R)  79.461*Lm(MU,MU0)*Hz(Z,MU,S,R)-0.01*Z;
 Ymu=@(mu,mu0) ( 100*(mu/mu0)^5 + 10.868*(mu/mu0)^4 + 7.2456*(mu/mu0)^3 + 1.8114*(mu/mu0)^2 + 1.2076*(mu/mu0) + 0.6038)/(1+(mu/mu0))^6;

MUdot=@(Z,MU,S,R) 65*H(S,500,2,0.5 )*H(Z,63.27,1,0)-2.5*MU-MU*Ymu(MU,MU0)*Hz(Z,MU,S,R);  
PRRXdot=@(R,S,T,Z) 6.3422*Hcomp(Z,R)*H(S,250,4,0.5 )*H(1.0*T,10,4 ,4)-0.02*R;%
SNAILdot=@(R,S,T)  0.1+18.1*H(R,485.27,6,0)*H(S,250,2,0.75 )*H(T,6.2059,4,7.3225)-1*S;
 
LambdaT=@(mu,x) 1./( 1+x(2)*(mu/x(1))+x(3)*(mu/x(1)).^2+x(4)*(mu/x(1)).^3+ x(5)*(mu/x(1)).^4); 
parT=[22.84            5.139           5.139            49.287         100.66];

TGFBdot=@(MU,T) 100*LambdaT(MU,parT)-1*T;
 

ODE=@(t,x) [Zdot(x(1)/1,x(2),x(4),x(3)); 
    MUdot(x(1),x(2),x(4),x(3));
      PRRXdot(x(3),x(4),x(5),x(1));
      SNAILdot(x(3),x(4),x(5));
     TGFBdot(x(2),x(5))];
 tol=1;
TT=3000;
while(tol>1e-6)
     
[t,X]=ode23s(ODE,linspace(0,TT,3000),X0i(1:5));

tol=norm(X(end,:)-X(end-1,:),'Inf');
TT=TT+250;
 
 
end
 Xe=X(end,:);

 

end
