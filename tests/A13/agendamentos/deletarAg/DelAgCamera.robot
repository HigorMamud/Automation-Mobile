*** Settings ***

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Excluir agendamento - Smart Câmera WiFi
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END

Excluir agendamento - Smart Câmera WiFi 2ª Geração
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END    

Excluir agendamento - Smart Câmera 360° WiFi
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END 


Excluir agendamento - Vídeo Porteiro WiFi
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END 


Excluir agendamento - Smart Câmera Bot WiFi
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END 


Excluir agendamento - Smart Câmera Bot 2ª Geração
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END 


Excluir agendamento - Smart Câmera WiFi com Bateria
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END                     