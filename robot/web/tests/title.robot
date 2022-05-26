*** Settings ****
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${url}               https://training-wheels-protocol.herokuapp.com/     
${check_thor}        id=thor
${check_iron}        css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]
${caminho}           "C:/Curso_Robot/robot/web/log"

*** Test Cases ***


Marcando opção com CSS Selector
    Go To                                ${url}/checkboxes
    Select Checkbox                      ${check_iron} 
    Checkbox Should Be Selected          ${check_iron}
    Capture Page Screenshot              
