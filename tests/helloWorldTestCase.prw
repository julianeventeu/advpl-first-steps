#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} helloWorldTestCase
Casos de teste para o exercicio helloWorld

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
class helloWorldTestCase from FWDefaultTestCase
    method helloWorldTestCase()
    method testCase1() 
end class 

method helloWorldTestCase() class helloWorldTestCase
    _Super:FWDefaultTestCase() 

    self:addTestMethod('testCase1',,'Deve retornar I S2 AdvPL')
return 

method testCase1() class helloWorldTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_helloWorld()
    oResult:AssertEqual(cTeste, "I S2 AdvPL")

return oResult