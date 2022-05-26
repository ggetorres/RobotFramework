*** Settings ***

Library     app.py


*** Test CAses ***
Deve retornar mensagem de boas vindas
     ${result}=         welcome     Angelica
     Should Be Equal    ${result}   Olá Angelica, Bem - vindo ao curso básico de RobotFramework!
 
 
 
 

 