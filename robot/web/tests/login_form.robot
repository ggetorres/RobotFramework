*** Settings ****
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


***Test Cases***
Login com sucesso
    Go to                               ${url}/login
    Input text                          css:input[name=username]                stark
    Input text                          css:input[name=password]                jarvis!
    Click Element                       class:btn-login

    Page Should Contain                  Olá, Tony Stark. Você acessou a área logada!