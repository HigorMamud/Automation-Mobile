*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***

*** Test Cases ***

Testar Configurações na Rotina
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    FOR    ${counter}    IN RANGE    0    501
        Quando clico em receber uma notificação
        Então clico em Testar Configurações
        Log    ${counter}
        Exit For Loop If    ${counter}==501
    END
