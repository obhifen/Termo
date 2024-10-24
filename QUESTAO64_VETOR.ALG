Algoritmo "questao64_termo"
Var

   p: vetor [1..5] de caracter
   v: vetor [1..5] de caracter
   c: vetor [1..5] de caracter
   cont, aux, ascII, i, j, k, l: inteiro
   a: logico

Inicio

   p[1] <- "T"
   p[2] <- "I"
   p[3] <- "G"
   p[4] <- "R"
   p[5] <- "E"

   escreval("Você tem 6 tentativas.")
   enquanto (l < 6) faca
      escreval
      escreval("Insira seu palpite, letra a letra, em maiúsculas: ")
      para i de 1 ate 5 faca
         escreva("Pos.", i, ": ")
         leia(v[i])
         se (v[i] >= "A") e (v[i] <= "Z") e (compr(v[i]) = 1) entao
            a <- falso
         senao
            a <- verdadeiro
         fimse
         enquanto (a = verdadeiro) faca
            escreval("A letra é minúscula ou o usuário inseriu um número ou uma palavra.")
            escreval("Digite novamente: ")
            leia(v[i])
            se (v[i] >= "A") e (v[i] <= "Z") e (compr(v[i]) = 1) entao
               a <- falso
            fimse
         fimenquanto
      fimpara

      para i de 1 ate 5 faca
         se (v[i] = p[i]) entao
            c[i] <- v[i]
            aux <- 1
         fimse
         j <- 1
         enquanto (j <= 5) faca
            se (aux = 1) entao
               j <- 5
            senao
               para k de 1 ate 5 faca
                  se (v[i] = p[k]) entao
                     ascII <- asc(v[i]) + 32
                     c[i] <- carac(ascII)
                     cont <- 1
                  fimse
               fimpara
               se (cont = 0) entao
                  c[i] <- "*"
                  j <- 6
               fimse
            fimse
            j <- j + 1
         fimenquanto
         aux <- 0
         cont <- 0
      fimpara

      para i de 1 ate 5 faca
         escreva(c[i])
      fimpara

      para i de 1 ate 5 faca
         se (c[i] = p[i]) entao
            cont <- cont + 1
         fimse
      fimpara

      escreval
      se (cont = 5) entao
         escreval("Você venceu!")
         aux <- 10
         l <- 6
      fimse
      l <- l + 1
   fimenquanto

   se (aux <> 10) entao
      para i de 1 ate 5 faca
         se (c[i] = p[i]) entao
            cont <- cont + 1
         fimse
      fimpara

      escreval
      se (cont = 5) entao
         escreval("Você venceu!")
      senao
         escreval("Você perdeu!")
      fimse
   fimse

   escreval("A palavra era: TIGRE")

Fimalgoritmo