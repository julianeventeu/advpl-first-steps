#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} myWhile
Exemplo de while para criar um array com 10 numeros

@author  author
@since   date
@version version
/*/
//-------------------------------------------------------------------
User Function myWhile()
Local nNum := 1
Local aNumeros := {}

    While nNum >= 1 .And. nNum <= 10 
        aAdd(aNumeros, nNum)
        nNum++
    End Do

    VarInfo("Lista", aNumeros)
Return