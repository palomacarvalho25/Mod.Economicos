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
CHILDREN_com_Eletrecidade <- dados_c3 %>% filter(electric == 1)
table(dados_c3$electric)/nrow(dados_c3)*100


table(dados_c3$electric)
mean(dados_c3$electric, na.rm = TRUE)
#questão 5 (iii)
CHILDREN_sem_Eletrecidade <- dados_c3 %>% filter(electric == 0)
mean(CHILDREN_com_Eletrecidade$children, na.rm = TRUE)
mean(CHILDREN_sem_Eletrecidade$children, na.rm = TRUE)

#questão 6 (i)
dados_c4 <- countymurders
?countymurders
ano_de_1996 <- dados_c4 %>% filter(year == 1996)
# sem assassinato
ZEROMURDERS <- ano_de_1996 %>% filter(murders ==0)
#sem execução
ZEROEXECS   <- ano_de_1996%>% filter(execs ==0)
2197-2166
#Porcentagem de condados sem execução
table(ano_de_1996$execs)/nrow(ano_de_1996)*100

#questão 6 (ii)
max(ano_de_1996$murders, na.rm = TRUE) #MAX ASSASSINATOS
max(ano_de_1996$execs, na.rm = TRUE)#MAX EXECUÇÕES
mean(ano_de_1996$execs, na.rm = TRUE)#Média EXECUÇÕES

cor(ano_de_1996$murders, ano_de_1996$execs)#coeficiente de correlação

#questão 7 (i)
dados_c5 <- alcohol 
?alcohol
table(dados_c5$abuse)/nrow(dados_c5)*100 #taxa de abuso do alcool
table(dados_c5$employ)/nrow(dados_c5)*100 #taxa de emprego
#questão 7 (ii)
abusam_do_alcool <- dados_c5%>% filter(abuse == 1)
table(abusam_do_alcool$employ)/nrow(abusam_do_alcool)*100 #taxa de emprego dos que abusam do alcool

#questão 7 (iii)

nao_abusam_do_alcool <- dados_c5%>% filter(abuse == 0)
table(nao_abusam_do_alcool$employ)/nrow(nao_abusam_do_alcool)*100 #taxa de emprego dos que não abusam do alcool

