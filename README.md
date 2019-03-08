* CART-regression in matlab
    * including normal CART decision tree and line decision tree.

Normal CART
---------------
* createnode.m
  * 此函数根据均值分割数据
* createtree.m
  * 此函数将建立决策树，s代表收敛条件，即区域内最小点数
* maketree.m
  * 此函数建立CART树的树形结构
* plotregress.m
  * 此函数画出每个分割点之间点的直线
* regmean.m
  * 此函数为了计算划分好区域内的均值
* splitdata.m
  * 此函数按照分割点，将数据分段
* test.m
  * 普通CART主函数

Line CART
---------------
* createlinenode.m
  * 此函数以线性回归最小回归误差为权分割数据
* createtree.m
  * 此函数将建立决策树，s代表收敛条件，即区域内最小点数
* linereg.m
  * 此函数是线性拟合函数，返回拟合度
* lineregval.m
  * 此函数是线性拟合函数，返回拟合值
* makelinetree.m
  * 此函数建立线性CART的树
* regline.m
  * 此函数按区域拟合直线的计算值
* splitdata.m
  * 此函数按照分割点，将数据分段
* testline.m
  * 线性CART主函数
Debug&Dataset
---------------
* printTree.m
  * 此函数为debug时检查树形结构使用
* sindatax.txt sindatay.txt
  * 分别保存了通过python numpy生成的sin型测试数据的x和y
* sindataset2.py
  * 测试数据生成
