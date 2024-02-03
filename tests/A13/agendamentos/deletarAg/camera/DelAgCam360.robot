*** Settings ***

Documentation    Smart Câmera 360° WiFi

Resource    ../../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - Smart Câmera 360° WiFi
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END 