*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Logando com senha incorreta
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com a minha conta
    E digito o e-mail  softwarecasapositivo@gmail.com
    E digito a senha  Positivo000
    E clico no botão entrar
    Então é retornando que a conta ou senha esta incorreta

