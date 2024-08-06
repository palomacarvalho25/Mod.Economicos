# Importação dos dados

#instala o pacote
install.packages("readr") 

# carrega o pacote 
library(readr)            
dados  <- read.csv("C:/Users/20231enpro0348/Downloads/olimpiadas.csv") #carrega os dados


# rm (arquivo) remove os dados


##############################
# tabelas de frequencia
##############################
# tabelas simples


table(dados$Sex) #verifica a frequencia de valores absolutos
#valores relativos
table(dados$Sex)/nrow(dados) #nrow é o numero de linhas

#tabela de dpla entrada
table(dados$Sex, dados$NOC)

library(esquisse) #ou install

#dados somente do Brasil

library(dplyr)#ou install
dados_brasil <- dados %>% filter(NOC == "BRA")
table(dados_brasil$Sex)


library(ggplot2)

ggplot(dados) +
 aes(x = Sex) +
 geom_bar(fill = "#112446") +
 theme_minimal()


#estatisticas descritivas para a idade dos atletas

#minimo 
min(dados$Age, na.rm =TRUE)
#maximo
max(dados$Age, na.rm =TRUE)
#media
mean(dados$Age, na.rm =TRUE)
#desvio padrao 
sd(dados$Age, na.rm =TRUE)

esquisser(dados)

#filtro peso por sexo
dados_f <- dados %>% filter(Sex== "F")
mean(dados_f$Weight, na.rm =TRUE)
#filtro media dos pesos por sexo
dados %>% group_by(Sex) %>% summarise(media = mean(Weight, na.rm = TRUE))
