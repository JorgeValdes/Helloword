#!/usr/bin/env python
# coding: utf-8

# In[2]:


import numpy as np
import pandas as pd


# In[3]:


filas = 'ventas1 ventas2 ventas3'.split()


# In[4]:


filas


# In[5]:


columnas = 'zonaA zonaB zonaC'.split()


# In[6]:


columnas


# In[ ]:





# In[7]:


datos = [12123,123123,21321],[12312,12312,12321], [1231,1232,1132]


# In[8]:


datos


# In[ ]:


dataframe = pd.DataFrame(datos,filas,columnas)


# In[ ]:


dataframe


# In[ ]:




