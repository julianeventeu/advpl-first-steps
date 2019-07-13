#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} u_Tabuada
Esse programa mostra no console a tabuada de 1 a 10 do numero 3

@author  Juliane Venteu
@obs
A saída no console será
1 x 3 = 3
2 x 3 = 6
...

/*/
//-------------------------------------------------------------------
User Function Tabuada()
Local nNumero
Local nResult
Local nBase := 3

    For nNumero:=1 to 10
        nResult := nNumero * nBase
        ConOut(i18n("#1 X #2 = #3", {nNumero, nBase, nResult}))
    Next nNumero

Return

