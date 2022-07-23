%原帖：http://blog.chinaaet.com/detail/3450.html 

x=[-1.58 0.42 0.46 0.78 -0.49 0.59 -1.3 -1.42 -0.16 -1.47 -1.350 36 -0.44 -0.14 1 -0.5 -0.2 -0.06 -0.6 0.42 -1.52 0.51 0.76 -1.50 16 -1.29 -0.65 -1.48 0.6 -1.65 -0.55];
lev=5;
wname='db3';
[c,l]=wavedec(x,lev,wname);
sigma=wnoisest(c,l,1);
alpha=2;
thr1 = wbmpen(c,l,sigma,alpha);
[thr2,nkeep] = wdcbm(c,l,alpha);
xd1=wdencmp('gbl',c,l,wname,lev,thr1,'s',1);
[xd2,cxd,lxd,perf0,perfl2]=wdencmp('lvd',c,l,wname,lev,thr2,'h');
[thr,sorh,keepapp] = ddencmp('den','wv',x);
xd3=wdencmp('gbl',c,l,wname,lev,thr,'s',1);
subplot(411);plot(x);title('原始信号','fontsize',12);
subplot(412);plot(xd1);title('使用penalty阈值降噪后信号','fontsize',12);
subplot(413);plot(xd2);title('使用Birge-Massart阈值降噪后信号','fontsize',12);
subplot(414);plot(xd3);title('使用缺省阈值降噪后信号','fontsize',12);