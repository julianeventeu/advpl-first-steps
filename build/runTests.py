import os
import sys
import json
import time
import datetime
import subprocess

def result_to_json(result_test):
    jsonResult = None

    if type(result_test) == str:
        ignoreString = '\nValidating the parameters...\n'
        position = result_test.find(ignoreString)

        if position >= 0:
            sizeIgnoreString = len(ignoreString)
            result_test = result_test[position+sizeIgnoreString:-4]

            try:
                jsonResult = json.loads(result_test)
            except:
                jsonResult = None

    return jsonResult

def analyse_result(file_test_case, result_test_case, successful, half_successful, broke):
    if ( result_test_case == None ) or ( 'tests' not in result_test_case ) or ( not result_test_case['tests']['runned'] ):
        broke.append(file_test_case)
    else:
        errors = getInvalidTests(result_test_case['tests']['methods'])
        size = len(result_test_case['tests']['methods'])

        if errors == 0:
            successful.append(file_test_case)
        elif errors == size:
            broke.append(file_test_case)
        else:
            half_successful.append(file_test_case)

def getInvalidTests(methods):
    invalids = 0

    for test in methods:
        if not test['success'] and not test['skiped']:
            invalids += 1

    return invalids

def getPathTests():
    if len(sys.argv) > 1:
        return sys.argv[1]
    else:
        return 'C:\\git\\advpl-first-steps\\test\\tests'

def getContainerName():
    if len(sys.argv) >= 2:
        return sys.argv[2]
    else:
        return 'TODO'

def getAllTestCases(path):
    files = []
    # r=root, d=directories, f = files
    for r, d, f in os.walk(path):
        for file in f:
            if '.pr' in file.lower():
                files.append(os.path.join(r, file))

    return files

def run_test(name_test_class, name_container):
    try:
        output = subprocess.run(['docker', 'exec', name_container, '/usr/local/run_test.sh', name_test_class], stdout=subprocess.PIPE, timeout=500)
        outputStr = output.stdout.decode('windows-1252').strip()
    except:
        outputStr = ""   
    return outputStr

def getClassName(testCase):
    lastSeparator = testCase.rfind('/')

    if lastSeparator >= 0:
        testCase = testCase[lastSeparator+1:]

    extension = testCase.lower().find('.pr')

    if extension >= 0:
        testCase = testCase[:extension]

    return testCase

def executeTests(files_test, successful, half_successful, broke):
    container_name = getContainerName()
    for file in files_test:
        name_test_class = getClassName(file)
        print("Begin Run Test: {}".format(name_test_class) + " - " + str(datetime.datetime.now()))
        
        run_result = result_to_json(run_test(name_test_class, container_name))
        analyse_result(file, run_result, successful, half_successful, broke)
        
        print("End Run Test: {}".format(name_test_class) + " - " + str(datetime.datetime.now())) 

def print_results(successful, half_successful, broke):
    print("\n")
    print("Successful:")
    print(successful)
    print("\n")
    print("Half-assed:")
    print(half_successful)
    print("\n")
    print("Broke:")
    print(broke)

if __name__ == "__main__":
    successful = []
    half_successful = []
    broke = []
    
    filesTestCase = getAllTestCases(getPathTests())
    executeTests(filesTestCase, successful, half_successful, broke)
    print_results(successful, half_successful, broke)