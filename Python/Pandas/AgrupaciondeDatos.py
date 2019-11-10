#!/usr/bin/env python
# coding: utf-8

# # Agrupacion de los datos
# 

# In[27]:


import numpy as np
import pandas as pd


# In[39]:


diccionario = {'dias':['dia1','dia1','dia1','dia1','dia2','dia3'], 'vendedores':['jorge', 'maria', 'mario', 'Juan', 'cristobal','jesus'],
              'ventas':['123','1231','13123','123123','123123','231312']}


# In[40]:


dataframe = pd.DataFrame(diccionario)


# In[41]:


dataframe


# In[46]:


dataframe.groupby('dias').describe()


# In[ ]:





# In[ ]:




