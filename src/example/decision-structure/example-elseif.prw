#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} decision2
Exemplo de uso da estrutura elseIf

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function ifelseif()
Local nNum1 := val(FWInputBox("Informe um n�mero"))
Local nNum2 := val(FWInputBox("Informe outro n�mero"))

	If nNum1 == nNum2
		Alert("Os numeros s�o iguais")
	ElseIf nNum1 > nNum2
		Alert("O primeiro n�mero informado � o maior")
	Else
		Alert("O segundo n�mero informado � o maior")
	EndIf

Return