# Atividade: Média da Turma com Estrutura de Repetição

. Qual é o principal problema de escalabilidade do código original?

O código original usa uma variável para cada aluno (`nota1`, `nota2`, ..., `nota5`) e repete as mesmas instruções de leitura uma vez para cada variável. Para 5 alunos isso funciona, mas não escala.

Se a turma tivesse 100 alunos, eu precisaria:

- declarar 100 variáveis;
- escrever 100 pares de `Escreva`/`Leia`;
- montar uma soma com 100 termos.

O código ficaria enorme, repetitivo, difícil de ler e fácil de errar (basta esquecer uma variável na soma). Além disso, para mudar o tamanho da turma eu teria que reescrever o programa inteiro.

O problema central é que a mesma tarefa (pedir uma nota e somá-la ao total) se repete várias vezes, e é exatamente para isso que existem as estruturas de repetição.

. Algoritmo reescrito com PARA...FAÇA

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

 Explicação

- **Uma única variável de nota:** `notaAtual` é reaproveitada a cada volta do laço. Como só preciso da soma no final, não é necessário guardar cada nota separadamente.
- **Acumulador:** `somaNotas` começa em 0 e recebe cada nota lida (`somaNotas <- somaNotas + notaAtual`).
- **Contador:** `contador` controla quantas vezes o laço executa e também aparece na mensagem ("aluno 1", "aluno 2", ...).
- **Tamanho da turma em um só lugar:** `qtdAlunos` define o limite do laço e o divisor da média, então não corro o risco de alterar um número e esquecer o outro.
- **Escalabilidade:** para 100 alunos, basta trocar `qtdAlunos <- 5` por `qtdAlunos <- 100`. O restante do código continua igual.
 
  Conclusão

Os dois algoritmos fazem a mesma coisa, mas o segundo é mais curto, limpo e reutilizável. Com o laço, o tamanho do programa deixa de depender do tamanho da turma, e esse é o principal ganho de eficiência e escalabilidade.
