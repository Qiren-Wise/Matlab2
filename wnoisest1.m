
%�����У�����ʹ�ú���wnoisest��ȡ�������Ȼ��ʹ�ú���wbmpen��ȡС��ȥ����ֵ�����ʹ��wdencmpʵ���ź����롣

load leleccum;
indx = 1:1024;
x = leleccum(indx);

%���������ź�

init = 2055615886;
randn('seed',init);
nx = x + 18*randn(size(x));

%ʹ��С������'db6'���źŽ���3��ֽ�

[c,l] = wavedec(nx,3,'db6');

%���Ƴ߶�1��������׼��
sigma = wnoisest(c,l,1);
alpha = 2;

%��ȡ��������е���ֵ
thr = wbmpen(c,l,sigma,alpha);
keepapp = 1;

%���źŽ�������
xd = wdencmp('gbl',c,l,'db6',3,thr,'s',keepapp);
subplot(221);
plot(x);
title('ԭʼ�ź�');

subplot(222);
plot(nx);
title('�����ź�');

subplot(223);
plot(xd);
title('�������ź�');