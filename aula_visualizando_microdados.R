install.packages("devtools")
install.packages("stringi") 
devtools::install_github("lucasmation/microdadosBrasil")
library('microdadosBrasil')

censo <- read_CENSO('pessoas', 2010, UF = "PR")

library(readr)
library(dplyr)
library(ggplot2)
setwd("C:/Users/marce/Documents/Microdados_com_R/Dados")
dir()
censo_pr <- read.csv('censo.csv', sep = ';')
censo_casc <- read.csv('censo_casc.csv', sep = ';')

#V0601 - sexo
#V6036 - idade
#V0632 - ensino superior
#V0633 - curso mais elevado que participou
#V0653 - horas trabalhadas por semana
#V6513 - renda principal

grafico <- censo_casc %>% 
  select(V0601, V6036, V0632, V0633, V0653, V6513)

colnames(grafico) <- c("sexo", "idade", "superior", "escola", "h_trab", "renda")

names(grafico)
grafico <- grafico %>% 
  filter(renda != 'NA' & renda <= 99999)

ggplot(grafico) +
  geom_point(aes(x = idade, y = renda))

ggplot(grafico) +
  geom_point(aes(x = idade, y = renda, color = factor(sexo)), size = 3)


ggplot(grafico) +
  geom_point(aes(x = idade, y = renda, color = escola), size = 3)

ggplot(grafico) +
  geom_point(aes(x = idade, y = renda, color = escola, size = h_trab))

ggplot(grafico) +
  geom_point(aes(x = idade, y = renda, color = factor(sexo)), size = 3) +
  scale_color_manual('sexo', 
                     values = c('red', 'blue'),
                     labels = c('H', 'F'))+
  labs(title = 'Idade, Renda e Sexo',
       y = 'Renda',
       x = 'Idade')


ggplot(grafico) +
  geom_histogram(aes(x = idade))

ggplot(grafico) +
  geom_bar(aes(x = as.factor(sexo)))+
  labs(title = 'Amostra',
       x = 'sexo',
       y = 'Quant')

ggplot(grafico1) +
  geom_bar(y = V6036, color = factor(V0601))

ggplot(grafico1) +
  geom_point(aes(x = V6036, y = V6511, color = factor(V0601))) +
  scale_color_manual('sexo', 
                     values = c('red', 'blue'),
                     labels = c('H', 'F'))+
  labs(title = 'Renda',
       y = 'Renda',
       x = 'Idade')

regressao <- lm(grafico$renda ~ grafico$h_trab)
summary(regressao)

names(regressao)

regressao <- lm(grafico$renda ~ grafico$h_trab - 1)
summary(regressao)