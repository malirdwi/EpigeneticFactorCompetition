function D=Interpolator(Z,i,Zr,PromoterMAPapprox,par)
  pp = num2cell(par);

[Ptotal Ktotal K2total rho a1 a1_  g1 a2 a2_ g2   b1 b1_ b2 b2_ g3 g4 g1_ g2_ g3_ g4_ a3 a3_ b3 b3_ g5 g5_ g6 g6_  DzT DrT DxT c1 c1_ c2 c2_ c3 c3_  g7 g8 g9 g7_ g8_ g9_ a21 a21_ g21 a31 a31_ g51 sz1 sz1_ sz2 sz2_ sz3 sz3_ sz4 sz4_ g21_  ]=pp{1,:};
  nPRC=[  1 0 1 0 1   ];
nKMT=[  1 1 0 0 1 ];
nKMT2=[ 1 1 1 1 0 ];
 
Dr=PromoterMAPapprox(i,:);
for jj=1:length(Z)
Zrs=Zr-Z(jj);

ii=find(Zr==Z(jj));
if(Z(jj)<0);
    D(jj)=InterpolatorV21(0,i,Zr,PromoterMAPapprox,par);
elseif(ii)
    D(jj)=Dr(ii);
elseif(Z(jj)>max(Zr))
Z(jj)
D(jj)=PromoterMAPV10((Zr(j)),nPRC(i)*PT,nKMT(i)*KT,nKMT2(i)*K2T,par);
else
        
iip=min(find( Z(jj)-Zr<0));
ii_=max(find( Z(jj)-Zr>0));

 D(jj)=Dr(ii_)+((Dr(iip)-Dr(ii_))/(Zr(iip)-Zr(ii_)))*(Z(jj)-Zr(ii_));
end

end