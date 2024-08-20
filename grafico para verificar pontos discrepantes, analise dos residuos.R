install.packages("ggplot2")

library(ggplot2)


diagrama de dispersão

ggplot(data = vento, aes(x = t, y = vt)) + 
  geom_point(size= 3) + 
  xlab("dia") + 
  ylab("velocidade do vento") + 
  theme_classic() + 
  geom_smooth(method = "lm", se = FALSE)

#coeficiente de correlação 

cor(vento$t,vento$vt)
#-0.4808565

# grafico para verificar pontos discrepantes

plot(modelo_vento) #se clicar enter vai aparecendo varios graficos
abline(0,0)

#analise da normalidade dos residuos

qqnorm(modelo_vento)
abline(0,0)

#AJUSTE DO MODELO

modelo_vento <- lm(formula = vt ~ t, data = vento)
summary(modelo_vento)


