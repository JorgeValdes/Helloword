#!/usr/bin/env python
# coding: utf-8

# # Realizar un merge dataframes
# 

# In[3]:


import numpy as np
import pandas as pd


# In[16]:


diccionario = {'A':[1,2,3], 'B':[4,5,6], 'clave':['c1','c2','c3']}


# In[17]:


dataframe = pd.DataFrame(diccionario)


# In[18]:


dataframe


# In[23]:


diccionario2 = {'C':[11,12,23], 'D':[14,15,16], 'clave':['c1','c2','c3']}


# In[24]:


dataframe2 = pd.DataFrame(diccionario2)


# In[25]:


dataframe2


# In[26]:


pd.merge(dataframe,dataframe2, on='clave')


# In[ ]:




