algoritmo "Conversor_dolar_reais_celsius_fahrenheit"

var
programa_ligado: logico
opcao_menu, new_operation: literal // menu de op��o e nova opera��o
temp_celsius, temp_fahrenheit, cotacao_dolar, dolar, reais: real // temperatura celsius, temperatura fahrenheit, valor da cota��o, valor Dolar e valor do Real

inicio
programa_ligado <- VERDADEIRO

escreval("Conversor de moedas e temperatura")
escreval("")

enquanto programa_ligado faca
   escreval("Conversor")
   escreval("")
   escreval("Temperatura")
   escreval("(a) Celsius para Fahrenheit")
   escreval("(b) Fahrenheit para Celsius")
   escreval("")
   escreval("Moeda")
   escreval("(c) Real para D�lar")
   escreval("(d) D�lar para Real")
   escreval("(s) Sair")
   escreval("")
   escreval("Digite o comando correspondente de qual op��o voc� deseja")

   leia(opcao_menu)

   escolha opcao_menu

   caso "a"
      escreval("Informe a temperatura (�C) : ")
      leia(temp_celsius)
      temp_fahrenheit <- temp_celsius*1.8+32
      escreval(temp_celsius:2:2, " �C equivalem a ", temp_fahrenheit:2:2, " �F")

   caso "b"
      escreval("Informe a temperatura (�F) : ")
      leia(temp_fahrenheit)
      temp_celsius <- (temp_fahrenheit-32)/1.8
      escreval(temp_fahrenheit:2:2, " �F equivalem a ", temp_celsius:2:2, " �C")

   caso "c"
      escreval("Informe o valor do d�lar: ")
      leia(cotacao_dolar)
      escreval("Quantos reais voc� deseja converter para d�lar? ")
      leia(reais)
      dolar <- reais/cotacao_dolar
      escreval(reais:2:2, " reais equivalem a ", dolar:2:2, " d�lares")

   caso "d"
      escreval("Informe o valor do d�lar: ")
      leia(cotacao_dolar)
      escreval("Quantos d�lares voc� deseja converter para reais? ")
      leia(dolar)
      reais <- dolar*cotacao_dolar
      escreval(dolar:2:2, " d�lares equivalem a ", reais:2:2, " reais")

   caso "s"
      limpatela
      escreval("Boa viagem, contem sempre com a gente!")
      escreval("Obrigado pela prefer�ncia!")
      programa_ligado <- falso
      interrompa

   outrocaso
      escreval("Comando incorreto. Por favor, digite novamente o comando desejado")

   fimescolha

   new_operation <- ""
   enquanto (new_operation <> "s") e (new_operation <> "n") faca
      escreval("Deseja fazer nova opera��o? (s/n)")
      leia(new_operation)
      limpatela
      se new_operation = "n" entao
      escreval("Boa viagem, contem sempre com a gente!")
      escreval("Obrigado pela prefer�ncia!")
      programa_ligado <- FALSO
      fimse
   fimenquanto
fimenquanto
fimalgoritmo
