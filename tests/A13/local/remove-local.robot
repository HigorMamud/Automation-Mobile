*** Settings ***


Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Adicionando Local
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    E removo o local e confirmo
    # FOR  ${counter}    IN RANGE    0    1
    #     E removo o local e confirmo
    #     Exit For Loop If    ${counter}==1
    # END