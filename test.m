clear all
clc
x=textread('sindatax.txt');
% 此函数测试一般回归树结果
y=textread('sindatay.txt');
% 
% x=1:10;
% y=1:10;
tree=maketree(x,y,10);
a=printTree(tree,1);
a=sort(a);
rm=regmean(x,y,a);
plotregress(a,rm,x)
