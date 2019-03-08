function rm = regmean(x,y,a)
%此函数为了计算划分好区域内的均值
%   a为划分好的点，是行向量
rm=[];

rm(1)=mean(y(find(x<=a(1))));
for i=2:length(a)
    
    rm(i)=mean(y(find(x<=a(i)&x>a(i-1))));
    disp(rm)
end

end

