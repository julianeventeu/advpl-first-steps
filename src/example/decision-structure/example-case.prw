#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} CaseSample
Exemplo de uso da estrutura case

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function CaseSample()
Local nOpcao := Val(FWInputBox("Digite um n�mero"))

    Do Case
        Case nOpcao == 1
            alert("Op��o valida")
        Case nOpcao == 2
            alert("Op��o valida")
        Case nOpcao == 3
            alert("Op��o valida")
        Case nOpcao == 4
            alert("Op��o valida")
        Case nOpcao == 5
            alert("Op��o valida")
        Case nOpcao == 6
            alert("Op��o valida")
        Otherwise
            alert("Op��o invalida!!")
    EndCase

Return