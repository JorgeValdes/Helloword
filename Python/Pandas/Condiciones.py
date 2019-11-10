#!/usr/bin/env python
# coding: utf-8

# In[2]:


import pandas as pd
#conciciones en los dataframes


# In[3]:


filas = 'ventas1 ventas2 ventas3'.split()


# In[4]:


columnas = 'zonaA zonaB zonaC'.split()


# In[5]:


datos = [[123,123,123],[2131,32,2],[123,213,122]]


# In[8]:


dataframe = pd.DataFrame(datos,filas,columnas)


# In[50]:


dataframe


# In[51]:


condicion1 = dataframe > 200


# In[52]:


dataframe[condicion1]


# In[53]:


condicion = (dataframe['zonaA']>200) & (dataframe['zonaB']>200) & (dataframe['zonaC']>300)


# In[54]:


dataframe[condicion]


# In[ ]:




