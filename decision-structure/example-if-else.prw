#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} decision
Exemplo de uso da estrutura if-else

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function decision()
Local nNum1 := val(FWInputBox("Informe um número"))
Local nNum2 := val(FWInputBox("Informe outro número"))

	If nNum1 == nNum2
		Alert("Os numeros são iguais")
	Else
		Alert("Os numeros são diferentes")
	EndIf

Return