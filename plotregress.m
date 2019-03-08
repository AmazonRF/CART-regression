function plotregress(a,rm,x)
%此函数画出每个分割点之间点的回归曲线
%   此处显示详细说明
%a是分割节点，rm是均值

   pl=line([x(1),a(1)],[rm(1),rm(1)],'LineWidth',5);
for i=2:length(a)
   pl=line([a(i-1),a(i)],[rm(i),rm(i)],'LineWidth',5);
end
pl.LineWidth=2;
end

