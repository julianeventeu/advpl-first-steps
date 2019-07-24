#include "protheus.ch"
#include "parmtype.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} maiorValor
@goal   Faça um algoritmo para ler a temperatura atual e conforme leitura,
        imprimir o resultado de acordo com a tabela abaixo.

        Temperatura     |   Resultado
        ________________|______________
        até 15          |   Muito frio
        de 16 a 23      |   Frio
        de 23 a 26      |   Agradavel
        de 26 a 30      |   Calor
        acima de 31     |   Muito quente

@param nTemperatura Valor da temperatura

@return cResult A descrição da sensação térmica, conforme a tabela

@author Lucas C. Victor
/*/
//-------------------------------------------------------------------
User Function Tmprtra(nTemperatura)
Local cResult := ''

PARAMTYPE 0 VAR nTemperatura 		AS NUMERIC

Return cResult
