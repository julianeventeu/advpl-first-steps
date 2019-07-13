#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} CaseSample
Exemplo de uso da estrutura case

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function CaseSample()
Local nOpcao := Val(FWInputBox("Digite um número"))

    Do Case
        Case nOpcao == 1
            alert("Opção valida")
        Case nOpcao == 2
            alert("Opção valida")
        Case nOpcao == 3
            alert("Opção valida")
        Case nOpcao == 4
            alert("Opção valida")
        Case nOpcao == 5
            alert("Opção valida")
        Case nOpcao == 6
            alert("Opção valida")
        Otherwise
            alert("Opção invalida!!")
    EndCase

Return