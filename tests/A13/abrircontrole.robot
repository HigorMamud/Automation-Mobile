*** Settings ***

Resource            ../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Abrindo o controle
        Dado que Aguardo a home carregar
        Sleep    10
    FOR    ${counter}    IN RANGE    0    3
        Dado que o Smart Controle Universal esta disponivel
        Então a tela do controle é exibida
        Log    ${counter}
        Exit For Loop If    ${counter}==1
    END
