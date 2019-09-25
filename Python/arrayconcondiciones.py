#!/usr/bin/env python
# coding: utf-8

# In[1]:


import numpy as np


# # seleccionar arrays con condiciones

# In[3]:


array = np.arange(0,10)


# In[4]:


array


# In[12]:


array2 = np.random.randint(0,10,10)


# In[13]:


array2


# In[24]:


condicion = array >= 5


# In[25]:


condicion


# In[26]:


array[condicion]


# In[28]:


array3 = array[condicion]


# In[29]:


array3


# In[30]:


array[array % 2 ==0]


# In[31]:


array[array > 5]


# In[38]:


array[array % 2 == 0]


# In[ ]:




