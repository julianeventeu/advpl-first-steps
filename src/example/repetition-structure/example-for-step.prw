#include "protheus.ch"
//-------------------------------------------------------------------
/*/{Protheus.doc} u_ForStep
Essa fun��o exibe no console em ordem descrescente os n�meros de 1 a 10

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function ForStep()
Local nNumero

    For nNumero:=10 To 1 step -1
        Conout(nNumero)
    Next 
    
Return