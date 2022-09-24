clear all
format long

 
 

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



   
syms P   K K2 Z  Dz_0  Dz00  Dz10  Dzp0  Dzk0 Dzk20    Dz0z  Dz1z     Dzkz  Dzk2z
syms     Dx_  Dx  Dx1 Dx2  Cxp  Cxk Cxk2


 syms  PT KT K2T DzT DxT  



syms a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_ 

syms c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_

R=[a1*P*Dz00;  a1_*Dzp0;  g1*Dzp0; 
   a2*K*Dz00;  a2_*Dzk0;  g2*Dzk0; 
   a3*K2*Dz00; a3_*Dzk20; g5*Dzk20;
     g1_*Dz_0; g2_*Dz10;   
      a21*K*Dz0z;  a21_*Dzkz;  g21*Dzkz; 
   a31*K2*Dz0z; a31_*Dzk2z; g51*Dzk2z;
   sz1*Z*Dz00; sz1_*Dz0z; sz2*Z*Dz10; sz2_*Dz1z;  
   sz3*Z*Dzk0; sz3_*Dzkz;sz4*Z*Dzk20; sz4_*Dzk2z;
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
[Dx_e  Dxe  Dx1e  Cxpe Cxke  Cxk2e]=solve(F1([14,16:19,end-3]),[Dx_ Dx    Dx1  Cxp Cxk  Cxk2])
 
F1=simplify(subs(F1,[Dx_ Dx    Dx1  Cxp Cxk  Cxk2],[Dx_e  Dxe  Dx1e  Cxpe Cxke  Cxk2e]))

 

 
 A=[]; b=[];
 for i=[4:13]
     if(i~=5)
         cc= [diff(F1(i),Dz_0)   diff(F1(i),Dz10)  diff(F1(i),Dzp0)  diff(F1(i),Dzk0)  diff(F1(i),Dzk20)    diff(F1(i),Dz0z)  diff(F1(i),Dz1z)   diff(F1(i),Dzkz)  diff(F1(i),Dzk2z)];
      A=[A; cc ];
      b=[b;subs(F1(i),[Dz_0  Dz10  Dzp0  Dzk0  Dzk20    Dz0z  Dz1z   Dzkz  Dzk2z],zeros(1,9))];
     end
     F1(i)=0;
     
 end
 
 Sol=-simplify(inv(A)*b)
 Dz_0e=Sol(1);  Dz10e=Sol(2);  Dzp0e=Sol(3);  Dzk0e=Sol(4);  Dzk20e=Sol(5);    Dz0ze=Sol(6);  Dz1ze=Sol(7);   Dzkze=Sol(8);  Dzk2ze=Sol(9);

 F1=simplify(subs(F1,[Dz_0  Dz10  Dzp0  Dzk0  Dzk20    Dz0z  Dz1z   Dzkz  Dzk2z],[Dz_0e  Dz10e  Dzp0e  Dzk0e  Dzk20e    Dz0ze  Dz1ze   Dzkze  Dzk2ze]));
  
 [nn,dd]=numden(F1(end-4));
length(coeffs(nn,Dz00));
Dz00e=-subs(nn,Dz00,0)/diff(nn,Dz00)  ;
  F1(end-4)=0;
  11
  EQ=subs(F1(1:3),Dz00,Dz00e);
  F0=subs(F1(end-2:end),Dz00,Dz00e);
      
 
      
      dF0=simplify(jacobian(F0,[P,K,K2]));
F0=simplify(F0);
Dz00e=simplify(Dz00e);


fid=fopen('F0P.m','wt');
fprintf(fid,'function out=FOP(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(F0(1)));
fclose(fid);

fid=fopen('F0K.m','wt');
fprintf(fid,'function out=FOK(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(F0(2)));
fclose(fid);

fid=fopen('F0K2.m','wt');
fprintf(fid,'function out=FOK2(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(F0(3)));
fclose(fid);

fid=fopen('dF011.m','wt');
fprintf(fid,'function out=dFO11(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(1,1)));
fclose(fid);



fid=fopen('dF012.m','wt');
fprintf(fid,'function out=dFO12(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(1,2)));
fclose(fid);



fid=fopen('dF013.m','wt');
fprintf(fid,'function out=dFO13(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(1,3)));
fclose(fid);



fid=fopen('dF021.m','wt');
fprintf(fid,'function out=dFO21(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(2,1)));
fclose(fid);



fid=fopen('dF022.m','wt');
fprintf(fid,'function out=dFO22(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(2,2)));
fclose(fid);


fid=fopen('dF023.m','wt');
fprintf(fid,'function out=dFO23(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(2,3)));
fclose(fid);



fid=fopen('dF031.m','wt');
fprintf(fid,'function out=dFO31(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(3,1)));
fclose(fid);


fid=fopen('dF032.m','wt');
fprintf(fid,'function out=dFO32(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(3,2)));
fclose(fid);


fid=fopen('dF033.m','wt');
fprintf(fid,'function out=dFO33(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(dF0(3,3)));
fclose(fid);


fid=fopen('Dz00.m','wt');
fprintf(fid,'function out=Dz00(P,K,K2,Z)\n');
fprintf(fid,'load parameters21.mat; load total_factors21.mat; \n out='); 
fprintf(fid,char(Dz00e))
fclose(fid);
beep
%   [nnK2,ddK2]=numden(F0(3));
% length(coeffs(nnK2,'K2'))
% [nnK,ddK]=numden(F0(2));
% length(coeffs(nnK,'K'))
% [nnP,ddP]=numden(F0(1));
% length(coeffs(nnP,'P'))