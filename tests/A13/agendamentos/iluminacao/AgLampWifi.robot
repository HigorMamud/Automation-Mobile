*** Settings ***

Documentation    Smart Lâmpada WiFi

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
###LAMPADA WIFI
Agendamento Smart Lâmpada WiFi Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso   

Agendamento Smart Lâmpada WiFi Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso