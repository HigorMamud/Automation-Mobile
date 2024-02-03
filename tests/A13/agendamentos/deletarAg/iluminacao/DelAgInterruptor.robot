*** Settings ***

Documentation    Smart Interruptor

Resource    ../../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - Smart Interruptor
    Dado que clico no botão    ${device_interruptor}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    10
    E mantenho o botão do agendamento pressionado
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==10
    END