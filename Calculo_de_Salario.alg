algoritmo "Calculo de sal�rio"

var
salario, aumento, novo_salario: real

inicio
Escreval("Informe seu sal�rio: ")
Leia (salario)

novo_salario <- salario * 1.3
aumento <- novo_salario - salario

Escreval ("Seu aumento foi de R$", aumento ,"!!"," ", "Seu novo sal�rio ter� o valor de R$", novo_salario)
fimalgoritmo
