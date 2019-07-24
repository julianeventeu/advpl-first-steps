# advpl-first-steps
Esse repositório tem como objetivo ajudar durante o aprendizado da linguagem AdvPL.

A pasta src/example possui fontes com exemplo de algumas estruturas em advpl, como estrutura de decisão, array, estrutura de repetição, entre outros.

A pasta "src/exercises" possui exercicios propostos para fixar as estruturas. O exercicio possui os parametros de entrada, quem se propoe a fazer o exercicio deve criar o código do processamento dos dados e devolver a saída esperada.
Todo exercicio proposto possui um teste unitário que valida as saidas esperadas, o teste fica na pasta "tests" e segue a mesma estrutura que existe na pasta "src".

**Executando um exercicio**
1. Crie uma branch a partir da branch MASTER
2. Modifique os fontes de exercicios que quiser estudar
3. Grave as alterações na sua branch
4. Faça um PR da sua branch para a MASTER
5. Verifique o resultado dos testes

Durante o PR será executado os testes dos exercicios e você poderá verificar quais passaram e quais não passaram.
Meu PR será aprovado? Não, o PR é necessario somente para executar o processo de teste
Preciso ser colaborador do repositório para executar exercicio? Sim, entre em contato comigo que eu te coloco como colaborador.

**Colaborando com exercicios**
Se quiser propor um exercicio, crie ele na pasta de exercicios, faça os testes unitários e mande um PR.

*Criando testes*
O objeto FWTestResult é usado para validar os resultados esperados da execução do seu teste.
Os seguintes métodos estão disponiveis para uso:
 - AssertTrue(lCondition)
 - AssertFalse(lCondition)
 - AssertEqual(xValue1, xValue2)
 - AssertNotEqual(xValue1, xValue2)


