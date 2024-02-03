*** Settings ***

Documentation    Smart Lâmpada WiFi Lite

Resource            ../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Lâmpada WiFi Lite Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    11    0    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    11    10    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    11    20    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    11    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    11    40    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso       

Agendamento Smart Lâmpada WiFi Lite Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    11    50    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    12    0    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    12    10    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    12    20    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi Lite Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    12    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso