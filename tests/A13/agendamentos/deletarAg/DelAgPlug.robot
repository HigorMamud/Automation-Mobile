*** Settings ***

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - PLUG   
    Dado que clico no botão    ${device_plug}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END