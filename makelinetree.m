function tree = makelinetree(x,y,s)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
%pro:0为叶节点；1为内部节点
%以下-1待改
tree = struct('pro',1,'value',-1,'child',[],'parentpro',-1);
%以下找根节点
node = createlinenode(x,y,s);
if node==max(x)
    return
end
%s代表叶子
if node~='s'
    tree.pro = 1;
    tree.value = node;
    %disp(node)
    [xl,xr,yl,yr]=splitdata(x,y,node);
    l_temptree=[];
    r_temptree=[];
    
    if(length(xl)>=s)
        l_temptree=maketree(xl,yl,s);
        l_temptree.parentpro=tree.value;
    end
    if(length(xr)>=s)
        r_temptree=maketree(xr,yr,s);
        r_temptree.parentpro=tree.value;
        
    end
    %disp(r_temptree.value)
    tempt=[l_temptree,r_temptree];
    tree.child=tempt;
    return
%     tree.child(2) =maketree(xl,yl,s);
%     tree.child(2).parentpro = tree.value;
else
    tree.pro = 0;
    tree.value = node;
    tree.child=[];
    return
end

