function [xl,xr,yl,yr] = splitdata(x,y,node)
%此函数按照分割点，将数据分段
%   此处显示详细说明
xl=x(find(x<=node));
xr=x(find(x>node));
yl=y(find(x<=node));
yr=y(find(x>node));
end

