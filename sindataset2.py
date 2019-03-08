#matplotlib inline
import matplotlib.pyplot as plt
import numpy as np
n_dots = 500

X = np.linspace(-2 * np.pi, 2 * np.pi, n_dots)
Y = np.sin(X) + 0.2 * np.random.rand(n_dots) - 0.1
X = X.reshape(-1, 1)
Y = Y.reshape(-1, 1)
fx=open('sindatax.txt','w')
fy=open('sindatay.txt','w')

for i in range(len(X)):
   fy.write('[');
   fy.write(str(Y[i]));
   fx.write(str(X[i]));
   fy.write(']');
   
   i=i+1;
plt.plot(X,Y,'o')
plt.show()
fy.close()
fx.close()

print(len(X))
