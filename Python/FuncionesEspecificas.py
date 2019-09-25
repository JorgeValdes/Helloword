#!/usr/bin/env python
# coding: utf-8

# # Funcion Map

# In[2]:


def multiplicar(numero):
    return numero *2


# In[3]:


multiplicar(2)


# In[8]:


lista = [1,2,3,4,5]
lista2 = list(map(multiplicar, lista))


# In[9]:


lista2


# # Funcion lambda

# In[10]:


def multiplicar(numero):
    return numero *2


# In[11]:


multiplicar(2)


# In[16]:


lista1 = [1,2,3,4,5,6]
lista2 = list(map(lambda numero : numero *2, lista1))


# In[17]:


lista2


# # Filtros

# In[18]:


def par(numero):
    if(numero % 2 ==0):
        return numero


# In[19]:


par(5)


# In[20]:


par(2)


# In[21]:


lista = [1,2,3,4,5,6]
lista_pares = list(filter(par, lista))


# In[22]:


lista_pares


# # Funciones con Cadenas de Caracteres
# 

# In[23]:


cadena = "Hola Buenos dias , me llamo Antonio"


# In[25]:


cadena.upper()


# In[26]:


cadena_mayusculas = cadena.upper()


# In[27]:


cadena_mayusculas


# In[28]:


cadena


# In[29]:


cadena.split()


# In[ ]:




