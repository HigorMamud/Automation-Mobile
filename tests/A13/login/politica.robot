*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Politica de privacidade
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com a minha conta
    E clico na Politica de privacidade
    Então é exibido a politica de privacidade