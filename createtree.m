function [c] = createtree(x,y,t,f,s)
%此函数将建立决策树，s代表收敛条件，即区域内最小点数
%   此处显示详细说明
m=[];
while length(find(x>=t&x<=f))<s
    t=0;
    f=0;
    m=0;
end
for i =t:f
    %xt=x(find(x<=i));
    yt=y(find(x<=i));
    
   % xf=x(find(x>i));
    yf=y(find(x>i));
    
    m(i)=var(yt)+var(yf);
end
c=find(m==min(m));

% c(cv)=cv;
% tl=t;
% fl=cv;
% tr=fl;
% fr=f;
% c.left=createtree(x,y,tl,fl,s);
% c.right=createtree(x,y,tr,fr,s);


