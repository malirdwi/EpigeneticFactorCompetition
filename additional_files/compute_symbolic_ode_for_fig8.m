 

   % P  K   K2
G1=[-1  0   0  
     1  0   0  
     1  0   0  
     0 -1   0  
     0  1   0  
     0  1   0  
     0  0  -1 
     0  0   1  
     0  0   1   
     0  0   0 
     0  0   0
     0 -1   0  
     0  1   0  
     0  1   0  
     0  0  -1 
     0  0   1  
     0  0   1;
     zeros(9,3)];
 
 
   % Dz_0  Dz00  Dz10  Dzp0  Dzk0  Dzk20    Dz0z  Dz1z   Dzkz  Dzk2z
G2=[ 0    -1     0      1     0      0       0     0      0      0   ;
     0     1     0     -1     0      0       0     0      0      0   ;
     1     0     0     -1     0      0       0     0      0      0   ;
     0    -1     0      0     1      0       0     0      0      0   ;
     0     1     0      0    -1      0       0     0      0      0   ;
     0     0     1      0    -1      0       0     0      0      0   ;
     0    -1     0      0     0      1       0     0      0      0   ;
     0     1     0      0     0     -1       0     0      0      0   ;
     0     0     1      0     0     -1       0     0      0      0   ;
    -1     1     0      0     0      0       0     0      0      0   ;
     0     1    -1      0     0      0       0     0      0      0   ;];
 
G2z=[ 0     0     0      0     0      0      -1     0      1      0   ;
      0     0     0      0     0      0       1     0     -1      0   ;
      0     0     0      0     0      0       0     1     -1      0   ;
      0     0     0      0     0      0      -1     0      0      1   ;
      0     0     0      0     0      0       1     0      0     -1   ;
      0     0     0      0     0      0       0     1      0     -1   ;
      0    -1     0      0     0      0       1     0      0      0   ;
      0     1     0      0     0      0      -1     0      0      0   ;
      0     0    -1      0     0      0       0     1      0      0   ;
      0     0     1      0     0      0       0    -1      0      0   ;
      0     0     0      0    -1      0       0     0      1      0   ;
      0     0     0      0     1      0       0     0     -1      0   ;
      0     0     0      0     0     -1       0     0      0      1   ;
      0     0     0      0     0      1       0     0      0     -1   ; 
      0     0     0      0     0      0       1    -1      0      0   ];
  
  
G2=[G2;G2z];
 
 
 
    % P  K   K2
G1x=[-1  0   0  
     1  0   0  
     1  0   0  
     0 -1   0  
     0  1   0  
     0  1   0  
     0  0  -1 
     0  0   1  
     0  0   1   
     0  0   0 
     0  0   0    ];
 
 
   % Dz_  Dz    Dz1       Czp   Czk   Czk2
G2x=[ 0    -1     0         1     0     0
      0     1     0        -1     0     0
      1     0     0        -1     0     0
      0    -1     0         0     1     0
      0     1     0         0    -1     0
      0     0     1         0    -1     0
      0    -1     0         0     0     1
      0     1     0         0     0    -1
      0     0     1         0     0    -1
     -1     1     0         0     0     0
      0     1    -1         0     0     0];
 
 
 ZR= zeros(size(G1,1),size(G2x,2));
  ZRx= zeros(size(G1x,1),size(G2,2));

G=[G1 G2     ZR   ;
    G1x ZRx    G2x ;]';



X=0; % computing it for the case without fesedback
syms P   K K2   Dz_0  Dz00  Dz10  Dzp0  Dzk0 Dzk20    Dz0z  Dz1z     Dzkz  Dzk2z
 
syms     Dx_  Dx  Dx1 Dx2  Cxp  Cxk Cxk2

 syms PT KT K2T DxT DzT a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  

 syms c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_

syms g1P g1T g0P g0T g1T2 g0T2 a1P a1T a1T2 a0P a0T a0T2

 
 

 

 


 

g1P =    1;
g1T2 = 1;   
g1T=1;
g0P=0.0;
g0T=0.0;
g0T2=0.0;


   g1=g1P;
 g2=g1T;
 g3=g0P;
 g4=g0T;
 g5=g1T2;
 g6=g0T2;

a1=a1P*(g1P+1);
a2=a1T*(g1T+1);
a3=a1T2*(g1T2+1);
b1=a0P*(g0P+1);
b2=a0T*(g0T+1);
b3=a0T2*(g0T2+1);




a1_=1;
a2_=1;
a3_=1;
b1_=1;
b2_=1;
b3_=1;
g1_=1;
g2_=1;
g3_=1;
g4_=1;
g5_=1;
g6_=1;
  sz1=1;;
 sz2=sz1;
 sz3=sz1;
 sz4=sz1;
 
 sz1_=1;
 sz2_=sz1_;
 sz3_=sz1_;
 
 sz4_=sz1_;


 

R=[a1*P*Dz00;  a1_*Dzp0;  g1*Dzp0; 
   a2*K*Dz00;  a2_*Dzk0;  g2*Dzk0; 
   a3*K2*Dz00; a3_*Dzk20; g5*Dzk20;
     g1_*Dz_0; g2_*Dz10;   
      a21*K*Dz0z;  a21_*Dzkz;  g21*Dzkz; 
   a31*K2*Dz0z; a31_*Dzk2z; g51*Dzk2z;
   sz1*X*Dz00; sz1_*Dz0z; sz2*X*Dz10; sz2_*Dz1z; %% X^2 eliminated for simplicity
   sz3*X*Dzk0; sz3_*Dzkz;sz4*X*Dzk20; sz4_*Dzk2z;
   g21_*Dz1z;
  b1*P*Dx; b1_*Cxp ; g3*Cxp;
   b2*K*Dx; b2_*Cxk; g4*Cxk;
   b3*K2*Dx; b3_*Cxk2; g6*Cxk2;
   g3_*Dx_; g4_*Dx1;  
   ];
 

 

F=[G*R;   
    Dz_0+Dz00+Dz10+Dzp0+Dzk0+Dzk20+Dz0z+Dz1z+Dzkz+Dzk2z-DzT; Dx_+Dx+Dx1+Cxp+Cxk+Cxk2-DxT;
    P+Dzp0+Cxp-PT; K+Dzk0++Dzkz+Cxk-KT;K2+Dzk20+Dzk2z+Cxk2-K2T; ];
F1=F;
[Dx_e  Dxe  Dx1e  Cxpe Cxke  Cxk2e]=solve(F1([14,16:19,end-3]),[Dx_ Dx    Dx1  Cxp Cxk  Cxk2]);
 
%[Dzk0e,Dxe,Cxpe,Cxke,Cxk2e,Dzk20e]=solve(F1(end-5:end),[Dzk0,Dx,Cxp,Cxk,Cxk2,Dzk20]);
% Dz_0  Dz00  Dz10  Dzp0  Dzk0  Dzk20    Dz0z  Dz1z   Dzkz  Dzk2z
 
F1=simplify(subs(F1,[Dx_ Dx    Dx1  Cxp Cxk  Cxk2],[Dx_e  Dxe  Dx1e  Cxpe Cxke  Cxk2e]));
 
%F1=simplify(subs(F1,[Dzk0,Dx,Cxp,Cxk,Cxk2,Dzk20],[Dzk0e,Dxe,Cxpe,Cxke,Cxk2e,Dzk20e]));
 
[Dz0ze,Dz1ze,Dzkze,Dzk2ze]=solve(F1(10:13),[Dz0z,Dz1z,Dzkz,Dzk2z]);
 ;
F1=simplify(subs(F1,[Dz0z,Dz1z,Dzkz,Dzk2z],[Dz0ze,Dz1ze,Dzkze,Dzk2ze]));
 
[Dzp0e,Dzk0e,Dzk20e]=solve(F1(end-2:end),[Dzp0,Dzk0,Dzk20]);
F1=simplify(subs(F1,[Dzp0,Dzk0,Dzk20],[Dzp0e,Dzk0e,Dzk20e]));
 
[Dz10e,Dz00e,Dz_0e]=solve(F1([4,20,6]),[Dz10,Dz00,Dz_0]);
 F1=simplify(subs(F1,[Dz10,Dz00,Dz_0],[Dz10e,Dz00e,Dz_0e]));
 
 
  F3=F1(1:3);


 
 
 
 
%F3=simplify(F3);
fid=fopen('F3PX.m','wt');
fprintf(fid,'function out=F3PX(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(1)));
fprintf(fid,';'); 
fclose(fid);

fid=fopen('F3KX.m','wt');
fprintf(fid,'function out=F3KX(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(2)));
fprintf(fid,';'); 
fclose(fid);

fid=fopen('F3K2X.m','wt');
fprintf(fid,'function out=F3K2X(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(3)));
fprintf(fid,';'); 
fclose(fid);
beep2
 