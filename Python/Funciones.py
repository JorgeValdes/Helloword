#!/usr/bin/env python
# coding: utf-8

# # Creacion de una lista desde otra Lista
# 

# In[4]:


lista1= [1,2,3,4,5]


# In[5]:


lista2 = []


# In[6]:


for numero in lista1:
    valor = numero * 2
    lista2.append(valor)


# In[7]:


lista2


# In[8]:


lista3 = [numero * 2 for numero in lista1]


# In[9]:


lista3


# # Funciones

# In[18]:


def funcion():
    print("holita")


# In[20]:


funcion()


# In[24]:


def saludar(nombre):
    print("hola buenos dias " + nombre)


# In[25]:


saludar("coke")


# In[40]:


def sumar(numero1,numero2):
    """
    estos  es una funcion para sumar
    """
    suma = numero1 + numero2
    return suma
   


# In[41]:


sumar(5,5)


# In[ ]:


sumar

