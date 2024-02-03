*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Realizando o logout 
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_sair}
    Então realizo o logout


