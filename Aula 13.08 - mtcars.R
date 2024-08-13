dados_carros <- mtcars


#questão a) Diagrama de dispersão hp e mpg

ggplot(data = dados_carros, aes(x = hp, y = mpg)) +
  geom_point(size = 3) + 
  theme_classic()+
  xlab("variável preditora")+
  ylab("variável independente")+
  geom_smooth(method = "lm", se = FALSE)

?mtcars

#questão b) coeficiente de Pearson

cor(dados_carros$hp, dados_carros$mpg)

#questão c) ajuste da reta #o y é primeiro e depois o x
dados_carros1 <- lm(formula = mpg ~ hp, data = mtcars)
summary(dados_carros1)
324.08-8.83

#questão d)

#questão e)
r quadrado 0.6024

#questão f

plot(dados_carros1)

#predição para um novo valor

novos_dados_carrosss <- data.frame(hp = 200)
predict(dados_carros1, novos_dados_carrosss)