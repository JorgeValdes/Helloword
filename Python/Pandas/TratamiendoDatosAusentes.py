#!/usr/bin/env python
# coding: utf-8

# # Tratamiendo de datos nulos

# In[1]:


import numpy as np
import pandas as pd


# In[6]:


diccionario = {'A': [4,5,np.nan], 'B': [6,1,5], 'C':[np.nan, 4 , np.nan]}


# In[7]:


diccionario


# In[8]:


dataframe = pd.DataFrame(diccionario)


# In[9]:


dataframe


# In[11]:


#comando de dataframe borrar aquelas filas que tengan un valor nulo
dataframe.dropna()


# In[12]:


dataframe


# In[14]:


dataframe.dropna(axis=1)


# In[15]:


#llenas los valores nulos
dataframe.fillna(value=100)


# In[16]:


#averiguar los valores medios para llenar los nulos
valor_medio = dataframe.mean()
valor_medio


# In[17]:


#me rellena los valores nulos con los medios
dataframe.fillna(value=valor_medio)


# In[ ]:




