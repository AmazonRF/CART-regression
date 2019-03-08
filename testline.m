% clc
% clear all
% x=[1,2,3,4,5,6,7,8,9];
% y=[2,1,3,3,4,5,7,9,8];
%此函数测试线性树结果
clear all
clc
 x=textread('sindatax.txt');
 y=textread('sindatay.txt');

tree=makelinetree(x,y,100);
a=printTree(tree,1);
a=sort(a);
regline(x,y,a);
