algoritmo "Calculo de salário"

var
salario, aumento, novo_salario: real
inicio
Escreval("Informe seu salário: ")
Leia (salario)

novo_salario <- salario * 1.3
aumento <- novo_salario - salario

Escreval ("Seu aumento foi de R$", aumento ,"!!"," ", "Seu novo salário terá o valor de R$", novo_salario)
fimalgoritmo
