#include "protheus.ch"
#include "parmtype.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} altura
@goal   Esse algoritmo recebe um array com duas colunas, a primeira 
        coluna corresponde ao sexo e a segunda coluna corresponde a altura
        Este programa deverá calcular e mostrar :
        a. A menor altura do grupo;
        b. A média de altura das mulheres;
        c. O número de homens;
        d. O sexo da pessoa mais alta.

@param Array com os dados das pessoas no seguinte formato:
        [n][1] "F" ou "M" (F para feminino e M para masculino)
        [n][2] Valor da altura

@return array unidimensional com 4 posiçoes:
        [1] A menor altura encontrada
        [2] A media de altura das mulheres
        [3] O numero de homens
        [4] O sexo da pessoa mais alta

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function analisePessoas(aPessoas)
Local aResultado := Array(4)

    aResultado[1] := 0
    aResultado[2] := 0
    aResultado[3] := 0
    aResultado[4] := ""
    
Return aResultado