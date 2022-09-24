 

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
 % 1  2   3    4   5    6    7   8    9   10     11  12  13  14  15  16 17
 % P  K   K2  Dz_  Dz  Dz1  Dz2  Czp Czk  Czk2  Dx_  Dx  Dx1 Dx2 Cxp Cxk  Cxk2
 
 %18  19  20   21   22  23   24   
 %Dr_  Dr Dr1  Dr2 Crp  Crk  Crk2 
 
 
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



   
syms P   K K2   Dz_0  Dz00  Dz10  Dzp0  Dzk0 Dzk20    Dz0z  Dz1z     Dzkz  Dzk2z
 
syms     Dx_  Dx  Dx1 Dx2  Cxp  Cxk Cxk2

%X=0;


 

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
fprintf(fid,'function out=F3P(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(1)));
fprintf(fid,';'); 
fclose(fid);

fid=fopen('F3KX.m','wt');
fprintf(fid,'function out=F3K(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(2)));
fprintf(fid,';'); 
fclose(fid);

fid=fopen('F3K2X.m','wt');
fprintf(fid,'function out=F3K2(P,K,K2,X,par)\n');
fprintf(fid,'PT=par(1); KT=par(2); K2T=par(3);\n'); 
fprintf(fid,'out='); 
fprintf(fid,char(F3(3)));
fprintf(fid,';'); 
fclose(fid);
 
 