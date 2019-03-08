function [node] = createnode(x,y,s)
%此函数根据均值分割数据
%   此处显示详细说明
if length(x)<=s
    node='s';
else
for i =1:length(x)
    yt=y(find(x<=x(i)));
    yf=y(find(x>x(i)));
    m(i)=var(yt)+var(yf);
end
c=find(m==min(m));
if length(c)>1
    node=x(c(1));
else
    node=x(c);
end
end



