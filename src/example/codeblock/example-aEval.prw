User Function SumCodeB()
Local aValores := {}
Local nSoma    := 0
Local bSoma    := {| nArrVal , nPosicao | nSoma += nArrVal }
//Local nCont := 0

    aadd(aValores,2)
    aadd(aValores,5)
    aadd(aValores,61)
    aadd(aValores,100)
    aEval(aValores,bSoma) //O bloco de código será executado para cada posição do array
    
    /*
    O Exemplo poderia ser executado da maneira abaixo também
    For nCont := 1 to Len(aValores)
        Eval(bSoma, aValores[nCont])
    Next
    */
    MsgInfo(nSoma,"Valores Somados")
Return