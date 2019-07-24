#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} maiorValorTestCase
Casos de teste para o exercicio maiorValor

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
class maiorValorTestCase from FWDefaultTestCase
    method maiorValorTestCase()
    method testCase1() 
    method testCase2() 
    method testCase3() 
end class 

method maiorValorTestCase() class maiorValorTestCase
    _Super:FWDefaultTestCase() 

    self:addTestMethod('testCase1',,'')
    self:addTestMethod('testCase2',,'')
    self:addTestMethod('testCase3',,'')
return 

method testCase1() class maiorValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_maiorValor(1,2,3)
    oResult:AssertEqual(nTeste, 5)

return oResult

method testCase2() class maiorValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_maiorValor(1,1,1)
    oResult:AssertEqual(nTeste, 2)

return oResult

method testCase3() class maiorValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_maiorValor(20,30,10)
    oResult:AssertEqual(nTeste, 50)

return oResult