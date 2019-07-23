#include "protheus.ch"

/*
Sugestões de testes:

1- Adicione mais transações ao array
2- Insira entradas de dados para novos valores (FwInputBox)
3- Crie uma nova posição no array para indicar se a transação foi um saque
ou um depósito
4- Repasse o array modificado com a opção de saque/depósito para uma função que realize o calculo de saldo atual.

*/

User Function AaddItem()
    Local aTransacoes  := {}
    Local cNomeDaConta := "Turma de ADVPL"
    Local dDeposito    := Date()
    Local nValor       := 10560.56 
    //Local nOpcao

    AAdd( aTransacoes, {cNomeDaConta,dDeposito,nValor/* ,nOpcao */ })

    //u_CalcSld(aTransacoes)
    Alert("Conta: " + aTransacoes[1][1] + ", Data: " + DtoC(aTransacoes[1][2]) + ", Valor: " + cValToChar(aTransacoes[1][3]))
Return 

/*
User Function CalcSld(aTransacoes)

return
*/