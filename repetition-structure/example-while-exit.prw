#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} whileExit
Exemplo de utilização da instrução EXIT dentro de um while.
O programa criará um array de numeros até o limite informado pelo usuario
ou até 1000, caso o numero informado pelo usuario seja maior que 1000.

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function whileExit()
Local nLimite := FWInputBox("Informe um número limite")
Local aNumeros := {}
Local nNum := 0

    While nNum <= nLimite
        nNum++ 
        
        If nNum == 1000
            Exit
        End If
        
        aAdd(aNumeros, nNum)
        
    End Do

    VarInfo("Lista", aNumeros)

Return