#include "Protheus.ch"

User Function BlocoCodigoExemplo(cEntrada)
Local bOk
Local bCancel
Local cOperacao := ""
Local cTexto    := FwInputBox("Digite seu texto")
Local cInclusao := ""

    bOK := { |cInclusao| Confirma(cInclusao), alert("Inclusão efetuada!") }
    bCancel := { |cEntrada, cOperacao| alert(i18n("#1 #2", {cEntrada, cOperacao})) }
	
	IF MSGYESNO("Deseja confirmar a inclusão?") 
        If Empty(cTexto)
            Eval(bCancel,/*Sem parâmetro mesmo ;) */,"O texto não foi digitado.")
        Else
            Eval(bOK, cTexto)
        EndIf		
	Else
		Eval(bCancel, cEntrada, "Operação Cancelada!!")
	EndIf
Return

Static Function Confirma(cNewText)
	Alert(cNewText)
Return

User Function teste_bloco()
	u_BlocoCodigoExemplo("Aula de Bloco de Código. ")
return