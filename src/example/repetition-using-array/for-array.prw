#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} mediaAlunos
Esse programa tem por objetivo calcular a media das notas de uma turma.

@param aAlunos Array multidimensional contendo o nome e as notas do aluno
[n][1] cNome
[n][2] aNotas

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
User Function mediaAlunos(aAlunos)
Local nAluno
Local nMedia
Local aNotas
Local nNota
Local nMediaAluno
Local nMediaGeral := 0

    For nAluno:=1 to Len(aAlunos)
        aNotas := aAlunos[nAluno][2]
        nMediaAluno := 0
        
        For nNota:=1 to Len(aNotas)
            nMediaAluno += aNotas[nNota]
        Next nNota
        
        nMediaALuno /= Len(aNotas)
        
        nMediaAluno /= Len(aAlunos)

        nMediaGeral += nMediaAluno
    Next nAluno

    Alert(i18n("A media geral dessa turma foi #1", {nMediaGeral}))

Return

User Function tst_mediaAlunos()
Local aAlunos := {}

    aAdd(aAlunos, {"Maria", {5, 6, 8, 2, 9, 2} } )
    aAdd(aAlunos, {"Joao",  {5, 6, 8, 2} } )
    aAdd(aAlunos, {"Joaquina", {5, 6, 8, 2} } )
    aAdd(aAlunos, {"Zezinho", {6, 6, 8, 2, 5} } )
    aAdd(aAlunos, {"Marcia", {5, 8, 8, 6} } )
    aAdd(aAlunos, {"Alice", {4, 6, 8, 10, 3, 5, 6} } )
    aAdd(aAlunos, {"Barbara", {5, 6, 8, 2} } )
    aAdd(aAlunos, {"Cassio", {5, 6, 7, 2} } )
    aAdd(aAlunos, {"Andre", {10, 10, 10, 2} } )

    u_mediaAlunos(aAlunos)

Return