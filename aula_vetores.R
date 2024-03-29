##VETORES

a <- c(1, 2, 3, 4)

#acessar o valor
a[2]

#criar sequ�ncia
rep(2,6)
x <- rep(2,6)

x[5]

seq(2, 6, 2) # um intervalo de sequencia com uma lei de forma��o
x1 <- seq(2, 6, 2)

x1[2]

x2 <- c(2:7) # receber uma sequencia de 2 a 7
x2[1]

letters [1:6] #cria uma sequencia de letras
alfabeto <- letters[1:6]

LETTERS[1:6] #sequencia de letras maiuscula

class(alfabeto) #classifica a classe do objeto

#factor
cortar <- c('sim', 'nao', 'sim')
class(cortar)
cortar[1]

Fcortar <- factor(cortar)
class(Fcortar)
Fcortar[2]

length(x2) #n�mero de observa��es
ls() #demonstrar todos os objetos

rm(list= ls(all = TRUE)) #remover todos os objetos

runif(20, 80, 200) #gerar uma distribui��o uniforme com n valores
hist(runif(20,80,200))

rnorm(20, 0, 1) #gerar uma distribui��o normal com m�dia e desvio padr�o
hist(rnorm(20, 0, 1))

x <- seq(1, 10, 1)
x1 <- sample(x, size = 6, replace = FALSE) #gerando uma amostra aleat�ria

sample(1:10,5) #gerar 5 variaveis entre os valores 1 e 10

sort(x1) #coloca os valores em ordem
sort(x1, decreasing = TRUE) #Colocar os valores em ordem decrescente

order(x1) #retorna a posi��o original de cada elemento do objeto
order(x1, decreasing = TRUE) #retorna a posi��o decrescente

rank(x1) #atribui postos aos valores de um objeto

#criar um vetor vazio
x2 <- vector() #criar um vetor vazio(logical por padr�o)
vector('character', length = 10)

logical(5)
length(x2)

#criar um vetor de variaveis inteiro
x3 <- c(1L, 2L, 3L)

typeof(x3) #apresenta tipo de variaveis

x3 <- order(x3, decreasing = TRUE)
str(x3)

x3 <- c(x3, 4) #adicionar uma variaveis

#corrigindo
charX3 <- as.character(x3) #transformar os valores em caracter
