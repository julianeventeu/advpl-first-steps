#include "protheus.ch"

//-------------------------------------------------------------------
/*/{Protheus.doc} analisePessoasTestCase
Casos de teste para o exercicio analisePessoas

@author  Juliane Venteu
/*/
//-------------------------------------------------------------------
class analisePessoasTestCase from FWDefaultTestCase
    method analisePessoasTestCase()
    method testCase1() 
    method testCase2() 
end class 

method analisePessoasTestCase() class analisePessoasTestCase
    _Super:FWDefaultTestCase() 

    self:addTestMethod('testCase1',,'')
    self:addTestMethod('testCase2',,'')
return 

method testCase1() class analisePessoasTestCase
Local oResult := FWTestResult():FWTestResult()
Local aTeste
Local aPessoas := {}

    aAdd(aPessoas, {"F", 1.60} )
    aAdd(aPessoas, {"M", 1.50} )
    aAdd(aPessoas, {"F", 1.70} )
    aAdd(aPessoas, {"F", 1.60} )
    aAdd(aPessoas, {"M", 1.90} )
    
    aTeste := u_analisePessoas()
    oResult:AssertEqual(aTeste[1], 1.50)
    oResult:AssertEqual(aTeste[2], 1.63)
    oResult:AssertEqual(aTeste[3], 2)
    oResult:AssertEqual(aTeste[4], "M")

return oResult

method testCase2() class analisePessoasTestCase
Local oResult := FWTestResult():FWTestResult()
Local aTeste
Local aPessoas := {}

    aAdd(aPessoas, {"M", 1.60} )
    aAdd(aPessoas, {"M", 1.50} )
    aAdd(aPessoas, {"M", 1.70} )
    aAdd(aPessoas, {"M", 1.60} )
    aAdd(aPessoas, {"M", 1.90} )
    
    aTeste := u_analisePessoas()
    oResult:AssertEqual(aTeste[1], 1.50)
    oResult:AssertEqual(aTeste[2], 0)
    oResult:AssertEqual(aTeste[3], 5)
    oResult:AssertEqual(aTeste[4], "M")

return oResult