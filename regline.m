function regline(x,y,a)
%按区域拟合直线的计算值
%   此处显示详细说明
yf=lineregval(x(find(x<=min(a))),y(find(x<=min(a))));
plot(x(find(x<=min(a))),y(find(x<=min(a))),'+');    %先打点
%plot(min(a),y(find(x==min(a))),'+')
plot(x(find(x<=min(a))),yf,'LineWidth',1);
hold on
for i=2:length(a)
    xt=x(find(x<=a(i)&x>=a(i-1)));
    yt=y(find(x<=a(i)&x>=a(i-1)));
    yf=lineregval(xt,yt);
    plot(xt,yt,'+');
    %plot(a(i),y(find(x==a(i))),'+')
    plot(xt,yf,'LineWidth',1);
    hold on

end
end

