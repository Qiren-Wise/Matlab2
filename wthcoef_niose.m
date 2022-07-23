%�����У���С���ֽ�ϵ��ʹ�ú���wthcoef������ֵ����Ȼ��������ֵ������С��ϵ�������ع��ﵽȥ��Ŀ�ġ�

load leleccum;
indx = 1:1024;
x = leleccum(indx);

%���������ź�

init = 2055615866;
randn('seed',init);
nx = x + 18*randn(size(x));

%ʹ��С������'db5'���źŽ���3��ֽ�

[c,l] = wavedec(nx,3,'db5');

%���ó߶�����

n = [1,2,3];

%������ֵ����

p = [100,90,80];

%�Ը�Ƶϵ��������ֵ����

nc = wthcoef('d',c,l,n,p);

%���������С���ֽ�ṹ�����ع�

rx = waverec(nc,l,'db5');

subplot(221);
plot(x);
title('ԭʼ�ź�');

subplot(222);
plot(nx);
title('�����ź�');

subplot(223);
plot(rx);
title('�������ź�');

 

