#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} cangurusTestCase
Casos de teste para o exercicio cangurus

@author  Lucas C. Victor
/*/
//-------------------------------------------------------------------
class cangurusTestCase from FWDefaultTestCase
    method cangurusTestCase()
    method testCase1() 
    method testCase2() 
    method testCase3() 
    method testCase4() 
    method testCase5() 
    method testCase6() 
    method testCase7() 
    method testCase8() 
    method testCase9() 
end class 

method cangurusTestCase() class cangurusTestCase
    _Super:FWDefaultTestCase() 

    self:addTestMethod('testCase1',,'')
    self:addTestMethod('testCase2',,'')
    self:addTestMethod('testCase3',,'')
    self:addTestMethod('testCase4',,'')
    self:addTestMethod('testCase5',,'')
    self:addTestMethod('testCase6',,'')
    self:addTestMethod('testCase7',,'')
    self:addTestMethod('testCase8',,'')
    self:addTestMethod('testCase9',,'')
return 

method testCase1() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(0, 3, 4, 2)
    oResult:AssertEqual(cTeste, "SIM")

return oResult

method testCase2() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(0, 2, 5, 3)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult


method testCase3() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(0, -2, 15, 223)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult


method testCase4() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(0, 0, 0, 0)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult


method testCase5() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste
    
    cTeste := u_cangurus(10001, 10, 50, 20)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult


method testCase6() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste
    
    cTeste := u_cangurus(2, 2, 2, 5)
    oResult:AssertEqual(cTeste, "SIM")

return oResult


method testCase7() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste
    
    cTeste := u_cangurus(-1, -1, -15, -20)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult


method testCase8() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(9000, 3, 9004, 2)
    oResult:AssertEqual(cTeste, "SIM")

return oResult


method testCase9() class cangurusTestCase
Local oResult := FWTestResult():FWTestResult()
Local cTeste

    cTeste := u_cangurus(1, 0, 2, 0)
    oResult:AssertEqual(cTeste, "NÃO")

return oResult
