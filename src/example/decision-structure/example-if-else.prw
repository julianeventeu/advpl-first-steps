#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} decision
Exemplo de uso da estrutura if-else

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function decision()
Local nNum1 := val(FWInputBox("Informe um n�mero"))
Local nNum2 := val(FWInputBox("Informe outro n�mero"))

	If nNum1 == nNum2
		Alert("Os numeros s�o iguais")
	Else
		Alert("Os numeros s�o diferentes")
	EndIf

Return