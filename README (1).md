# Atividade - Média da Turma

## Qual é o problema do código original?

O problema é que o código cria uma variável para cada aluno (nota1, nota2, nota3...) e repete o Escreva e o Leia para cada um. Com 5 alunos até dá pra aceitar, mas se a turma tivesse 100 alunos eu ia ter que criar 100 variáveis, escrever 100 vezes a mesma coisa e fazer uma soma gigante com 100 notas. Ia ficar um código enorme, chato de escrever e fácil de errar, porque se eu esquecesse uma nota na soma o resultado ia sair errado. Além disso, toda vez que a quantidade de alunos mudasse eu teria que mexer no código inteiro.

Ou seja, o código repete a mesma tarefa várias vezes, e para isso a gente usa estrutura de repetição.

## Como eu refiz

Usei o PARA...FAÇA, porque já sei quantas vezes o laço precisa rodar (uma vez por aluno).

```
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
```

## O que mudou

Em vez de 5 variáveis de nota, agora só tem uma (notaAtual), que é usada de novo a cada volta do laço. Como eu só preciso da soma no final, não precisa guardar todas as notas.

A variável somaNotas começa valendo 0 e a cada volta recebe a nota que foi digitada. O contador serve pra repetir o laço e também pra mostrar "aluno 1", "aluno 2" e assim por diante.

Eu também criei a variável qtdAlunos para deixar o número de alunos em um lugar só. Ela é usada no limite do laço e na hora de dividir pra achar a média. Assim, se a turma tiver 100 alunos, só preciso trocar o 5 por 100 no começo e o resto funciona igual.

## Conclusão

Os dois códigos fazem a mesma coisa, mas o novo é bem menor e funciona para qualquer tamanho de turma. Com o laço de repetição o código não cresce junto com a quantidade de alunos, e isso deixa ele mais limpo e mais fácil de mexer depois.
