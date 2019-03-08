function [yf] = lineregval(x,y)
%此函数是线性拟合函数，返回拟合值
     one=ones(length(x),1);
     X=[one,x'];  %注意第一列全为1，即x0=1,第二列才为x1
     Y=y';
     %A=inv(X'*X);
     theta=(X'*X)\X'*Y; 
     yf=theta(1)+theta(2).*X(:,2);
%      theta1=theta(1);
%      theta2=theta(2);
end

