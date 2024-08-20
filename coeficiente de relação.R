install.packages("ggplot2")

library(ggplot2)


#diagrama de dispersão

ggplot(data = poluicao, aes(x = dia, y = CO)) + 
  geom_point(size= 4) + 
  xlab("dia") + 
  ylab("concentracao de CO") + 
  theme_classic() + 
  geom_smooth(method = "lm", se = FALSE)

#coeficiente de correlação 

cor(poluicao$dia, poluicao$CO)

#AJUSTE DO MODELO

modelo_poluicao <- lm(formula = CO ~ dia, data = poluicao)
summary(modelo_poluicao)


###############################
# y  = concentração de CO
# x = dia
# equação do modelo
# y = 6,264608 + 0,019827x
# R quadrado = 19,96% (poder explicativo baixo para o modelo)

#analise dos resíduos

#GRAFICO X VS RESIDUOS
plot(poluicao$dia, modelo_poluicao$residuals)
abline(0,0)

#O  modelo tem desempenho bastante variavel para diferentes valores de x, 
# especialmente muito baixos ou muito altos 
#parece desobedecer o coeficiente de homocedasticidade



novo_dado <- data.frame(dia = 121)
predict(modelo_poluicao, novo_dado, interval = "predict")

# fit         lwr inf      upr sup
# 8.663725   5.870842     11.45661


