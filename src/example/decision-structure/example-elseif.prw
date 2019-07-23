#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} decision2
Exemplo de uso da estrutura elseIf

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function ifelseif()
Local nNum1 := val(FWInputBox("Informe um número"))
Local nNum2 := val(FWInputBox("Informe outro número"))

	If nNum1 == nNum2
		Alert("Os numeros são iguais")
	ElseIf nNum1 > nNum2
		Alert("O primeiro número informado é o maior")
	Else
		Alert("O segundo número informado é o maior")
	EndIf

Return