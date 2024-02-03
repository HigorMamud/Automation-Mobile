*** Settings ***

Documentation    Smart Fita Multi

Resource            ../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Fita CCT ligada - Uma vez
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Uma vez
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligado - Dias da semana
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligado - Dias da semana
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligado - Todos os dias
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso  

Agendamento Fita CCT desligado - Todos os dias
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso