#!/usr/bin/env python
# coding: utf-8

# # combinar dataframes

# In[1]:


import numpy as np
import pandas as pd


# In[2]:


diccionario = {'a':['1','2','3'], 'b':['4','5','6'], 'c':['7','8','9']}


# In[4]:


dataframe = pd.DataFrame(diccionario)


# In[5]:


dataframe


# In[6]:


diccionario2 = {'a':['10','11','12'], 'b':['13','14','15'], 'c':['16','17','18']}


# In[7]:


dataframe2 = pd.DataFrame(diccionario2)


# In[8]:


dataframe2


# In[10]:


#lo que hace es combinar los dataframes es sentido de columna
pd.concat([dataframe,dataframe2])


# In[11]:


#concadenar en sentido de fila
pd.concat([dataframe,dataframe2], axis=1)


# In[ ]:




