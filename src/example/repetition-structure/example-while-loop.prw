#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} whileLoop
Exemplo de utiliza��o da instru��o LOOP dentro de um while.
O programa criar� um array de numeros impares baseado em um limite
informado pelo usuario

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function whileLoop()
Local nLimite := Val(FWInputBox("Informe um n�mero limite"))
Local aNumeros := {}
Local nNum := 0

    While nNum <= nLimite
        nNum++ 
        
        If nNum % 2 == 0
            Loop
        End If
        
        aAdd(aNumeros, nNum)
        
    End Do

    VarInfo("Lista Impar", aNumeros)

Return