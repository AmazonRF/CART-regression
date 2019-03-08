function [m] = linereg(x,y)
%此函数是线性拟合函数，返回拟合度
     one=ones(length(x),1);
     X=[one,x'];  %注意第一列全为1，即x0=1,第二列才为x1
     Y=y';
     A=inv(X'*X);
     theta=A*X'*Y; 
     yf=theta(1)+theta(2).*X(:,2);
     tempt=sqrt(sum((y'-yf').^2)/length(x));
     m=tempt(1);
end

