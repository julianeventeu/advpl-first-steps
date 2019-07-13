#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} SimpleDecision
Exemplo de uso da estrutura if

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function SimpleDecision()
Local nNum1 := Val(FWInputBox("Informe um número"))
Local nNum2 := Val(FWInputBox("Informe outro número"))

	If nNum1 == nNum2
		Alert("Os numeros são iguais")
	EndIf

Return 