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

Excluir agendamento - Robo
    Dado que clico no botão    ${device_robo_laser}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END

Excluir agendamento - Smart Lâmpada WiFi RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END    

Excluir agendamento - Smart Lâmpada WiFi Retrô
    Dado que clico no botão    ${device_lampada_retro}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END  

Excluir agendamento - Smart Luminaria de Mesa WiFi
    Dado que clico no botão    ${device_luminaria}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END

Excluir agendamento - Smart Fita LED RGB
    Dado que clico no botão    ${device_fita_rgb}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END

Excluir agendamento - Smart Fita LED Multi Temperatura
    Dado que clico no botão    ${device_fita_rgb}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END    

Excluir agendamento - Smart Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END


Excluir agendamento - Smart Lâmpada WiFi Lite
    Dado que clico no botão    ${device_lampada_lite}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END


Excluir agendamento - Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END


Excluir agendamento - Smart Lâmpada Wi-Fi Spot
    Dado que clico no botão    ${device_spot}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END


Excluir agendamento - Painel LED
    Dado que clico no botão    ${device_painel}
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END


Excluir agendamento - Smart Bocal antigo
    Dado que clico no botão    ${device_bocal}    
    E clico no calendário
    FOR  ${counter}    IN RANGE    0    30
    E mantenho o agendamento pressionado - Um vez - Ligar
    Quando confirmo a exclusão
    Então o Agendamento é removido com sucesso
    Exit For Loop If    ${counter}==30
    END    