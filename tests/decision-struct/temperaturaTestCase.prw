#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} temperaturaValorTestCase
Casos de teste para o exercicio temperatura

@author  Lucas C. Victor
/*/
//-------------------------------------------------------------------
class temperaturaValorTestCase from FWDefaultTestCase
    method temperaturaValorTestCase()
    method testCase1() 
    method testCase2() 
    method testCase3() 
    method testCase4() 
    method testCase5() 
end class 

method temperaturaValorTestCase() class temperaturaValorTestCase
    _Super:FWDefaultTestCase() 

    self:addTestMethod('testCase1',,'')
    self:addTestMethod('testCase2',,'')
    self:addTestMethod('testCase3',,'')
    self:addTestMethod('testCase4',,'')
    self:addTestMethod('testCase5',,'')
return 

method testCase1() class temperaturaValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_Tmprtra(8)
    oResult:AssertEqual(nTeste, 'Muito frio')

return oResult

method testCase2() class temperaturaValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_Tmprtra(23)
    oResult:AssertEqual(nTeste, 'Frio')

return oResult

method testCase3() class temperaturaValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_Tmprtra(25)
    oResult:AssertEqual(nTeste, 'Agradavel')

return oResult

method testCase4() class temperaturaValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_Tmprtra(27)
    oResult:AssertEqual(nTeste, 'Calor')

return oResult

method testCase5() class temperaturaValorTestCase
Local oResult := FWTestResult():FWTestResult()
Local nTeste

    nTeste := u_Tmprtra(32)
    oResult:AssertEqual(nTeste, 'Muito quente')

return oResult