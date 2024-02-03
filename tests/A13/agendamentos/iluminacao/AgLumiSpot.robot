*** Settings ***

Documentation    Smart Luminária Spot WiFi de Embutir

Resource            ../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
####Luminaria Embutir
Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Uma vez
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Uma vez
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Ter Qui
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso    

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Ter Qui
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Dias da Semana        
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Dias da Semana        
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Todos os dias
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso   

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Todos os dias
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso