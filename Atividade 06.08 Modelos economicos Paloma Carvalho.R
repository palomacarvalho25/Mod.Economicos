install.packages("wooldridge")
library(wooldridge)

dados_c1 <- wage1

?wage1

library(esquisse)

#questão 1 (i)
#media
mean(dados_c1$educ, na.rm =TRUE)
#minimo 
min(dados_c1$educ, na.rm =TRUE)
#maximo
max(dados_c1$educ, na.rm =TRUE)

#questão 1 (ii)
#salario medio hora
mean(dados_c1$wage, na.rm =TRUE)


#questão 1(v)
#frequencia mulheres
dados_f <- dados_c1 %>% filter(female ==1)
table(dados_c1$female)
#frequencia homens
dados_m <- dados_c1 %>% filter(female ==0)
table(dados_c1$female)



#questão 2 (i)
install.packages("wooldridge")
library(wooldridge)

dados_c2 <- bwght

?bwght

table(dados_c2$cigs)

1388-1176
#questão 2 (ii)
#media de cigarros consumidos por dia
mean(dados_c2$cigs, na.rm =TRUE)

#só as pessoas que fumam
fumantes <- dados_c2 %>% filter(cigs>0)

#questão 2 (iii)
#media de cigarros consumidos por dia por gestantes 
mean(fumantes$cigs, na.rm = TRUE)

#questão 2 (v)
#media da renda familiar
mean(dados_c2$faminc, na.rm = TRUE)
29.02666*5.65
#desvio padrao da media da renda familiar
sd(dados_c2$faminc, na.rm = TRUE)
18.73928*5.65


#questão 5
install.packages("wooldridge")
library(wooldridge)

dados_c3 <- fertil2

?fertil2


#questão 5 (i)

#minimo criancas
min(dados_c3$children, na.rm =TRUE)
#maximo criancas
max(dados_c3$children, na.rm =TRUE)
#media criancas 
mean(dados_c3$children, na.rm =TRUE)

#questão 5 (ii)
mulheres_com_Eletrecidade <- dados_c3 %>% filter(eletric == "1")
