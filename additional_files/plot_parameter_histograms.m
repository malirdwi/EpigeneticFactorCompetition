
 edges=kron(v,[0.8 1.25]);
figure,
 
subplot(6,6,1)
h=histogram(a0P123,'BinEdges',edges,'Normalization','probability');
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]);
 % [f,xi]=ksdensity(a0P132); hold on; plot(xi,f);
 hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,7)
%cc=(1+g0P123).*a0P123;
%h=histogram(cc,'Normalization','probability')
 h=histogram(g0P123,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]);
hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,13)
h=histogram(a0T123,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,19)
h=histogram(g0T123,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,25)
h=histogram(a0T2123,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,31)
h=histogram(g0T2123,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


 

subplot(6,6,2)
h=histogram(a0P213,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


subplot(6,6,8)
h=histogram(g0P213,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,14)
h=histogram(a0T213,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,20)
h=histogram(g0T213,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,26)
h=histogram(a0T2213,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,32)
h=histogram(g0T2213,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

 
 
subplot(6,6,3)
h=histogram(a0P132,'BinEdges',edges,'Normalization','probability')
xlabel('Level','interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


subplot(6,6,9)
h=histogram(g0P132,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,15)
h=histogram(a0T132,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,21)
h=histogram(g0T132,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,27)
h=histogram(a0T2132,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,33)
h=histogram(g0T2132,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

 
 
subplot(6,6,4)
h=histogram(a0P231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


subplot(6,6,10)
h=histogram(g0P231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,16)
h=histogram(a0T231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,22)
h=histogram(g0T231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,28)
h=histogram(a0T2231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,34)
h=histogram(g0T2231,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


 
 
subplot(6,6,5)
h=histogram(a0P321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


subplot(6,6,11)
h=histogram(g0P321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/10 max(v)*10])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,17)
h=histogram(a0T321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,23)
h=histogram(g0T321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,29)
h=histogram(a0T2321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,35)
h=histogram(g0T2321,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

 
 
subplot(6,6,6)
h=histogram(a0P312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)


subplot(6,6,12)
h=histogram(g0P312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,18)
h=histogram(a0T312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,24)
h=histogram(g0T312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,30)
h=histogram(a0T2312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)

subplot(6,6,36)
h=histogram(g0T2312,'BinEdges',edges,'Normalization','probability')
xlabel("Level",'interpreter','latex','FontSize',18)
 set(gca,'Xscale','log'); set(gca,'FontSize',11);
xlim([min(v)/2 2*max(v)])
ylabel('Probability','FontSize',10); xticks([0.01,0.1,1,10,100,1000]); hh=h.Values; hold on; plot(v,hh(1:2:end),'Linewidth',2)
