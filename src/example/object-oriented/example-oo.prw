 #include "protheus.ch"

 USER FUNCTION Inicial()
 Local oObj := Pokemon():New("Pikachu", "Trovão", 25)
    oObj:PokeAgenda()
 Return

 CLASS Pokemon
    Data cNome
    Data cTipo
    Data nPokedex
    
    Method New(cNome, cTipo, nPokedex) CONSTRUCTOR
    Method PokeAgenda()
 ENDCLASS

 METHOD NEW(cNome,cTipo, nPokedex) CLASS Pokemon
    self:cNome := cNome
    self:cTipo := cTipo
    self:nPokedex := nPokedex
 Return self

 METHOD PokeAgenda() CLASS Pokemon
     DEFINE MSDIALOG oDlg TITLE "pokeagenda" FROM 180,180 TO 650,800 PIXEL
   
  // Cria fonte para ser usada no TSay
  oFont := TFont():New('Courier new',,-18,.T.)
   
  // Monta o Texto no formato HTML
  cTextHtml := '<hr size="1">'+;
               '<H1>POKEAGENDA</H1>'+;
               '<h5>Pokémon selecionado</h5><br/>'+;
               '<table border="1" cellpadding="1" cellspacing="0">'+;
               '<tr>'+;
               '<td width="100" bgcolor="#FFFF87">Pokedex</td>'+;
               '<td width="200" bgcolor="#FFFF87">Nome</td>'+;
               '<td width="100" bgcolor="#FFFF87">Tipo</td>'+;
               '</tr>'+;
               '<tr>'+;
               '<td>'+ cValTochar(self:nPokedex) +'</td>'+;
               '<td>'+ self:cNome +'</td>'+;
               '<td>'+ self:cTipo+'</td>'+;
               '</tr>'+;
               '</table>'
  // Cria o TSay permitindo texto no formato HMTL
  lHtml := .T.
  oSay := TSay():New(01,01,{||cTextHtml},oDlg,,oFont,,,,.T.,,,400,300,,,,,,lHtml)
 
  ACTIVATE MSDIALOG oDlg CENTERED
 Return .T.