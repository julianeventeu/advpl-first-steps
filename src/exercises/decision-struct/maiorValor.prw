#include "protheus.ch"
#include "parmtype.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} maiorValor
@goal   Esse algoritmo deve receber 3 valores e retornar a soma dos 
        2 maiores 

@param nValor1 Valor do primeiro numero
@param nValor2 Valor do segundo numero
@param nValor3 Valor do terceiro numero

@return nSoma Soma dos dois maiores numeros recebidos

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function maiorValor(nValor1, nValor2, nValor3)
Local nSoma := 0

PARAMTYPE 0 VAR nValor1 		AS NUMERIC
PARAMTYPE 1 VAR nValor2 		AS NUMERIC
PARAMTYPE 2 VAR nValor3 		AS NUMERIC

Return nSoma
