*** Settings ****
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Variables ***
${check_thor}        css:input[value='thor']
${check_iron}        css:input[value='iron-man']
${check_panther}     xpath://*[@id='checkboxes']/input[7]
${caminho}           "C:/Curso_Robot/robot/web/log"

*** Test Cases ***
Marcando opção com CSS Selector
    Go To                                ${url}/checkboxes
    Select Checkbox                      ${check_thor}
    Checkbox Should Be Selected          ${check_thor}
    Capture Page Screenshot              

