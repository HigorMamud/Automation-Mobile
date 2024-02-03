*** Settings ***

Documentation    Smart Lâmpada WiFi RGB+

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Agendamento Smart Lâmpada WiFi RGB+ Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}                            
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso  
    
Agendamento Smart Lâmpada WiFi RGB+ Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso