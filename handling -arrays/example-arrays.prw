#include "protheus.ch"


User Function ios_arr()
    Local aExemplo  := ""
    Local cMensagem := ""

    aExemplo    := Array(8, 8)
    aExemplo[1] := {"I", "A", "S", "U", "I", "M", "F", "T"}
    aExemplo[2] := {"Ç", "O", "D", "F", "B", "N", "X", "E"}
    aExemplo[3] := {"D", "P", "S", "G", "G", "H", "B", "C"}
    aExemplo[4] := {"N", "A", "K", "A", "R", "E", "H", "A"}
    aExemplo[5] := {"R", "H", "Z", "Y", "R", "T", "Y", "R"}
    aExemplo[6] := {"K", "X", "A", "L", "J", "R", "U", "B"}
    aExemplo[7] := {"M", "S", "C", "A", "P", "O", "A", "X"}
    aExemplo[8] := {"M", "I", "C", "O", "P", "O", "A", "Y"}

    cMensagem += cValToChar(aExemplo[1][1])
    cMensagem += cValToChar(aExemplo[2][2])
    cMensagem += cValToChar(aExemplo[3][3])
    cMensagem += cValToChar(aExemplo[4][4])
    cMensagem += cValToChar(aExemplo[5][5])
    cMensagem += cValToChar(aExemplo[6][6])
    cMensagem += cValToChar(aExemplo[7][7])
    cMensagem += cValToChar(aExemplo[8][8])

    MsgInfo("Utilizando " + right(cMensagem,5) + " no " + left(cMensagem,3), "!!!***!!!") //Similar ao Alert
Return