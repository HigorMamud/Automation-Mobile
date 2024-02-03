*** Settings ***

Documentation    Smart Câmera WiFi 2ª Geração

Resource    ../../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - Smart Câmera WiFi 2ª Geração
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END