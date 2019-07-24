#include 'protheus.ch'

User function compVisual()
Local oDlg 
Local cTitulo   := 'Exemplo da aula IOS'
Local oFont
Local oSay
Local oGet
Local cNome := Space(100)
Local cIdade := Space(3)
Local lCheck := .F.
local oCheck

DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 600,800 PIXEL

// Cria Fonte para visualização
oFont := TFont():New('Courier new',,-18,.T.)
 
// Cria o Objeto tSay usando o comando @ .. SAY
@ 10,10 SAY oSay PROMPT 'Nome:' SIZE 200,20 COLORS CLR_RED,CLR_WHITE FONT oFont OF oDlg PIXEL
@ 50,10 SAY oSay PROMPT 'Idade:' SIZE 200,20 COLORS CLR_RED,CLR_WHITE FONT oFont OF oDlg PIXEL
 
@ 10,50 GET oGet VAR cNome FONT oFont SIZE 200,20 OF oDlg PIXEL VALID !empty(cNome) 
@ 50,50 GET oGet VAR cIdade FONT oFont SIZE 50,20 OF oDlg PIXEL 
 
@ 80,10 CHECKBOX oCheck VAR lCheck FONT oFont PROMPT "Selecione" SIZE 60,15 OF oDlg PIXEL

@150,120 BUTTON "Confirmar" FONT oFont SIZE 080, 047 PIXEL OF oDlg ACTION u_Botao(oDlg,cNome)

ACTIVATE MSDIALOG oDlg CENTERED

 


Return

User Function Botao(oDlg,cNome)
Alert(cNome)
oDlg:End()
Return