*** Settings ***

Documentation    Smart Lâmpada WiFi

Resource    ../../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - Smart Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END