#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} whileExit
Exemplo de utiliza��o da instru��o EXIT dentro de um while.
O programa criar� um array de numeros at� o limite informado pelo usuario
ou at� 1000, caso o numero informado pelo usuario seja maior que 1000.

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function whileExit()
Local nLimite := Val(FWInputBox("Informe um n�mero limite"))
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