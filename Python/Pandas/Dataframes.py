 #!/usr/bin/env python
# coding: utf-8

# # Dataframes

# In[1]:


import numpy as np
import pandas as pd


# In[2]:


filas = ['ventas1', 'ventas2', 'ventas3']
columnas = ['zonaA', 'zonaB', 'zonaC']


# In[8]:


datos = [[123,1232,12321], [1902,12321,12321],[123,1231,12312]]
lista1 = np.random.randint(100, 1000, 9)
lista1


# In[26]:


dataframe = pd.DataFrame(datos, filas , columnas)
#funcion para mostrar los datos en tabla bonito


# In[5]:


dataframe


# In[24]:


dataframe.loc[['ventas1','ventas2']]
#con lo loc es para las filas y lo demas con columnas 
# In[25]:


dataframe.loc['ventas3']


# In[28]:


dataframe[['zonaA', 'zonaB']]


# In[32]:


dataframe['zonaA'], ['ventas1']


# In[33]:


dataframe['TodaslasZonas'] = dataframe ['zonaA'] + dataframe ['zonaB'] + dataframe['zonaC']


# In[34]:


dataframe['TodaslasZonas']


# In[35]:


12321+ 1232 + 123


# In[36]:


dataframe


# In[45]:


dataframe.drop('TodaslasZonas', axis=1, inplace=True)
#borra una columna del dataframe


# In[46]:


dataframe


# In[51]:


dataframe['total'] = dataframe['zonaB'] + dataframe['zonaC']


# In[52]:


dataframe


# In[56]:

#elimina un parametro ya sea columna o fila axis =1 para columnas , axis=0 para filas
dataframe.drop("ventas3", axis=0)

dataframe.drop("ventas3", axis=0, inplace=True) para borrarlo definitivamente


# In[ ]:
dataframe.shape(muetra cuentas filas y columnas respectivamente)



