#!/usr/bin/env python
# coding: utf-8

# # Numpy arrays - reshape
# 

# In[1]:


import numpy as np


# In[26]:


array = np.random.randint(1,100,100)
#genero un array con 5 elementos random entre el 1 y el 100


# In[27]:


array


# In[28]:


matriz = array.reshape(10,10)
#ocupo la funcion reshape para generar una matrix y dentro tiene que tener una multiplicacion de los numeros del array en este caso son 5 elementos


# In[29]:


matriz


# # Valores maximos y minimos de un array

# In[49]:


array = np.random.randint(1,100,20)


# In[50]:


array


# In[51]:


valor_max = array.max()


# In[52]:


valor_max


# In[56]:


valor_min = array.min()


# In[57]:


valor_min


# In[58]:


posicion_max = array.argmax()


# In[59]:


posicion_max


# In[60]:


posicion_min = array.argmin()


# In[61]:


posicion_min


# In[62]:


#argmax y argmin nos trae la posicion en el que esta el numero menor y mayor , con nuestro max() y min ( podemos saber el numero menor de el array)


# In[ ]:




