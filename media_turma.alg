Algoritmo "CalculaMediaTurma"
Var
  contador, qtdAlunos: Inteiro
  notaAtual, somaNotas, mediaTurma: Real

Inicio
  qtdAlunos <- 5
  somaNotas <- 0

  Para contador de 1 ate qtdAlunos faca
    Escreva("Digite a nota do aluno ", contador, ": ")
    Leia(notaAtual)
    somaNotas <- somaNotas + notaAtual
  FimPara

  mediaTurma <- somaNotas / qtdAlunos

  Escreva("A média da turma é: ", mediaTurma)
Fimalgoritmo
