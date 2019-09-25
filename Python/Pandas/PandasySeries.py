#!/usr/bin/env python
# coding: utf-8

# # Introduccion a Pandas

# In[1]:


#Pandas es una libreria de codigo abierto es una extension de numpy para la manipulacion de datos
#permite preparar y analizar los datos


# In[6]:


import numpy as np
import pandas as pd


# In[7]:


#Series en Pandas
etiquetas = ['a','b', 'c']
datos = [1,2,3]


# In[9]:


pd.Series (data = datos, index=etiquetas)


# In[32]:


array = np.random.randint(0,3,3)
etiqueta = ['venta1', 'venta2', 'venta3']
array


# In[34]:


pd.Series (array,etiqueta)


# In[35]:


#queremos acceder a un dato


# In[36]:


serie1 = pd.Series(array,etiqueta)


# In[37]:


serie1


# In[38]:


serie1[0]


# In[41]:


serie1['venta2']


# In[44]:


datos2 = ['wena los cabros', 39 ,'informatica']


# In[47]:


serie2 = pd.Series(datos2)


# In[48]:


serie2


# In[54]:


serie3 = pd.Series([1,2,3,848],['departamento1','depa2','depa3','depa4'])


# In[55]:


serie4 = pd.Series([4,5,6],['departamento1', 'depa2', 'depa3'])


# In[56]:


seriesuma = serie3 + serie4


# In[57]:


seriesuma


# In[ ]:




