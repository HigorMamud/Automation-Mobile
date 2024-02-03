*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Criar o máximo de cenas possível
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
      FOR    ${counter}    IN RANGE    0    100
        Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
        Quando clico em receber uma notificação
        E salvo o nome da Rotina     700 mais
        Então a rotina é salva com sucesso
        Log    ${counter}
        Exit For Loop If    ${counter}==300
    END