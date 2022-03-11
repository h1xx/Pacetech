algoritmo "Conversor_dolar_reais_celsius_fahrenheit_2.0"

var
programa_ligado: logico
opcao_menu, nova_operacao: literal
entrada_hora, entrada_temp, saida_temp: vetor[1..4] de real
cotacao, entrada_moeda, saida_moeda: real
i, j: inteiro
aux, aux2, aux3: real

procedimento cabecalho()     // cabeçalho
inicio

escreval("Conversor de temperaturas e moedas - Pacetech")
escreval("")
escreval("Bem-vindo!")
escreval("")
escreval("Escolha uma das opções")
escreval("")

fimprocedimento

procedimento opcao_menu     // menu de opção
inicio

escreval("Temperatura")
escreval("(a) Celsius para Fahrenheit")
escreval("(b) Fahrenheit para Celsius")
escreval("(c) Mostrar últimas conversões")
escreval("")
escreval("Moeda")
escreval("(d) Real para Dólar")
escreval("(e) Dólar para Real")
escreval("")
escreval("(s) Sair")
escreval("")

fimprocedimento

procedimento temp_fahrenheit()  // conversor de Celsius para Fahrenheit (Vetor)
inicio

escreval("")
escreval("Celsius para Fahrenheit")
escreval("")
para i de 1 ate 4 faca
     escreval("Informe o horário (00-23h): ")
     leia(entrada_hora[i])
     escreval("Informe a temperatura em ºC ")
     leia(entrada_temp[i])
     saida_temp[i] <- ((entrada_temp[i] * 1.8)+32)
     escreval("A temperatura", entrada_temp[i]," ", "°C registrada as", " ", entrada_hora[i], "h corresponde a", " ", saida_temp[i]:2:2,"°F")
fimpara
escreval("")

fimprocedimento

procedimento temp_celsius()  // conversor de Fahrenheit para Celsius (Vetor)
inicio

escreval("")
escreval("Fahrenheit para Celsius")
escreval("")
para i de 1 ate 4 faca
     escreval("Informe o horário (00-23h): ")
     leia(entrada_hora[i])
     escreval("Informe a temperatura em ºF ")
     leia(entrada_temp[i])
     saida_temp[i] <- ((entrada_temp[i] - 32)/1.8)
     escreval("A temperatura", entrada_temp[i]," ", "°F registrada as", " ", entrada_hora[i], "h corresponde a", " ", saida_temp[i]:2:2,"°C")
fimpara
escreval("")

fimprocedimento

procedimento memoria_horas()  //Armazenamento das horas registradas
inicio

para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se (entrada_temp[j] > entrada_temp[i]) entao
         aux <- entrada_temp[i]
         entrada_temp[i] <- entrada_temp[j]
         entrada_temp[j] <- aux
         aux2 <- saida_temp[i]
         saida_temp[i] <- saida_temp[j]
         saida_temp[j] <- aux2
         aux3 <- entrada_hora[i]
         entrada_hora[i] <- entrada_hora[j]
         entrada_hora[j] <- aux3
      fimse
   fimpara
fimpara
para i de 1 ate 4 faca
   escreval("Temperatura", " ", entrada_temp[i], "°C, registrada as", entrada_hora[i],"h corresponde a"," ", saida_temp[i]:2:2,"°F")
fimpara

fimprocedimento

procedimento reais_dolar()  //Conversor de reais para dolares
inicio

escreval("")
escreval("Informe a cotação do dolar")
leia(cotacao)
escreval("Quantos reais você deseja converter?")
leia(entrada_moeda)
saida_moeda <- (entrada_moeda / cotacao)
escreval("O valor em dólares é de US$",saida_moeda:3:2)
escreval("")

fimprocedimento

procedimento dolar_reais()  //Conversor de dolares para reais
inicio

escreval("")
escreval("Informe a cotação do dolar de hoje")
leia(cotacao)
escreval("Quantos dólares você deseja converter?")
leia(entrada_moeda)
saida_moeda <- (entrada_moeda * cotacao)
escreval("O valor em reais é R$",saida_moeda:3:2)
escreval("")

fimprocedimento

procedimento nova_operacao()  //Pergunta de nova operação
inicio

escreval("")
enquanto (nova_operacao <> "s") e (nova_operacao <> "n") faca
  escreval("Deseja fazer nova operação? (s/n)")
  leia(nova_operacao)
  limpatela
    se nova_operacao = "n" entao
    escreval("Boa viagem, contem sempre com a gente!")
    escreval("Obrigado pela preferência!")
    programa_ligado <- FALSO
    fimse
fimenquanto

fimprocedimento

inicio
programa_ligado <- verdadeiro
enquanto programa_ligado faca

cabecalho()

opcao_menu()
leia(opcao_menu)

escolha opcao_menu

  caso "a"
    temp_fahrenheit()
  caso "b"
    temp_celsius()
  caso "c"
    memoria_horas()
  caso "d"
    reais_dolar()
  caso "e"
    dolar_reais()
  caso "s"
    escreval("Boa viagem, contem sempre com a gente!")
    escreval("Obrigado pela preferência!")
    programa_ligado <- falso
    interrompa
  outrocaso
    escreval(" ")
    escreval("Comando incorreto. Por favor, digite novamente o comando desejado")

fimescolha

nova_operacao()

fimenquanto

fimalgoritmo
