function resp= printTree(tree,i)
%此函数为debug时检查树形结构使用
[h,j]=size(tree.child);
%global i;
global res;

if j==2
    if tree.child(1).value=='s'||tree.child(2).value=='s'
        fprintf('(%d)',tree.value);
        res(i)=tree.value;
        i=i+1;
        disp(i)
        if tree.child(1).value~='s'
                printTree(tree.child(1),i);
        elseif tree.child(2).value~='s'
                printTree(tree.child(2),i);
        end
    else
        printTree(tree.child(1),i);
        printTree(tree.child(2),i);
    end
elseif j==1
    fprintf('(%d)',tree.value);
    res(i)=tree.value;
    i=i+1;
    disp(i)
   
    if tree.child(1).value~='s'
        printTree(tree.child,i);
    end
else
    fprintf('(%d)',tree.value);
    res(i)=tree.value;
    i=i+1;
    disp(i)
   
end
resp=res;
