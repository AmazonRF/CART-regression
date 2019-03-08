function [node] = createlinenode(x,y,s)
%此函数以线性回归最小回归误差为权分割数据
%   此处显示详细说明
if length(x)<=s
    node='s';
else
%线性回归要保证至少两个点
for i =2:length(x)-1
    yt=y(find(x<=x(i)));
    xt=x(find(x<=x(i)));
    yf=y(find(x>x(i)));
    xf=x(find(x>x(i)));
    if length(xt)~=1&length(xf)~=1
    %线性回归算法
        mt=linereg(xt,yt);
        mf=linereg(xf,yf);
        m(i)=mt+mf;
    else
        
        yt=y(find(x<=x(i-1)));
        xt=x(find(x<=x(i-1)));
        yf=y(find(x>x(i-1)));
        xf=x(find(x>x(i-1)));
        mt=linereg(xt,yt);
        mf=linereg(xf,yf);
        m(i)=mt+mf;
        
    end
    
end
c=find(m==min(m));
if length(c)>1
    node=x(c(1));
else
    node=x(c);
end

end



