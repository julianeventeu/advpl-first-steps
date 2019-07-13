#include "protheus.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} u_ForStep
Essa função exibe no console em ordem descrescente os números de 1 a 10

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function ForStep()
Local nNumero

    For nNumero:=10 To 1 step -1
        Conout(nNumero)
    Next nTimes

Return