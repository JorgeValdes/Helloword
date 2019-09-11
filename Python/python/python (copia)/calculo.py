"""
https://docs.python.org/2/tutorial/modules.html
"""
# Fibonacci numbers module

def fib(n):    # write Fibonacci series up to n
    a, b = 0, 1
    while b <= n:
        print( b),
        a, b = b, a+b

def fib_list(n):   # return Fibonacci series up to n
    result = []
    a, b = 0, 1
    while b <= n:
        result.append(b)
        a, b = b, a+b
    return result

#función calculadora
def calcular(operación, valor1, valor2):
    calculo=0
    if(operación=='suma'):
        calculo=valor1+valor2
    elif(operación=='resta'):
        calculo=valor1-valor2
    elif(operación=='multiplicación' or operación=='multiplicacion'):
        calculo=valor1*valor2
    elif((operación=='división' or operación=='division')and valor2!=0):
        calculo=valor1/valor2   
    return calculo