#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} SimpleDecision
Exemplo de uso da estrutura if

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function SimpleDecision()
Local nNum1 := Val(FWInputBox("Informe um n�mero"))
Local nNum2 := Val(FWInputBox("Informe outro n�mero"))

	If nNum1 == nNum2
		Alert("Os numeros s�o iguais")
	EndIf

Return�