*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Acessando o aplicativo com facebook
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com facebook
    Então o login é realizado com sucesso