#!/usr/bin/env python
# coding: utf-8

# In[ ]:


operadores if y else y elif para tener mas condiciones


# # Operadores Condicionales

# In[2]:


a = 3
b = 5
if(a == b):
    print("a es igual a b")
else:
        print("a no es igual a b")


# In[7]:


a = 8
b = 3
if(a == b):
    print("a es igual a b")
elif(a >b):
    print('a es mayor que b')
elif(a <b):
    print("a es menor que b")
else:
        print("a no es igual a b")


# bucle for

# In[11]:


lista = [1,2,3,4,5,6]
for elemento in lista:
    valor = elemento *10
    print(valor)


# # bucle while
# 

# In[15]:


numero = 1
while numero < 5:
    print(numero)
    numero = numero +1


# # Funcion range

# In[16]:


range(0,5)


# In[18]:


list(range(0,5))


# In[19]:


list(range(0,8))


# In[21]:


for i in range(2,4):
    print(i)


# In[ ]:




