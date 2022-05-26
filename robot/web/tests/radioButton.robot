*** Settings ****
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


***Test Cases***
Selecionando por ID
        Go To                                 ${url}/radios
        # os paarametros são o grupo do "radio" e ID
        Select Radio Button                   movies        cap 
        Radio Button Should Be Set To         movies        cap
        #tempo de quanto tempo executa o teste
        Sleep                                 2 

Selecionando por value        
        Go To                                 ${url}/radios
        # os paarametros são o grupo do "radio" e ID
        Select Radio Button                   movies        guardians 
        Radio Button Should Be Set To         movies        guardians
        #tempo de quanto tempo executa o teste
        Sleep                                 2 
