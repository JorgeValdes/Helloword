#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[3]:


filas = 'ventas1 ventas2 ventas3'.split()
columnas = 'zonaA zonaB zonaC'.split()
datos = [[213,213,312,],[123,12312,312,],[123,312,312]]
dataframe = pd.DataFrame(datos,filas,columnas)


# In[4]:


dataframe


# In[5]:


nuevas_filas = 'dia1 dia2 dia3'.split()
nuevas_filas


# In[7]:


dataframe['dias'] = nuevas_filas
#agregas nuevas filas al dataframe


# In[8]:


dataframe


# In[9]:


dataframe.set_index('dias')#el nuevo dataframe tiene una nueva columna y set_index lo convierte a columna


# In[16]:


#no se ha cambiado pero realizacion la igualacion y queda el dataframe cambiado
dataframe 


# In[ ]:




