*** Settings ***

Documentation    Smart Painel LED

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
####Painel LED
Agendamento Smart Painel LED Ligar - Uma vez
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Desligar - Uma vez
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Uma vez    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Seg Qua Sex    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Ligar - Ter Qui
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Desligar - Ter Qui
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Ter Qui    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Ligar - Dias da Semana        
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Desligar - Dias da Semana        
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Dias da Semana    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso

Agendamento Smart Painel LED Ligar - Todos os dias
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}
    ...    ${checkbox_ligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso    

Agendamento Smart Painel LED Desligar - Todos os dias
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento    ${btn_agen_PROVISORIO}    ${titulo_agendar}    ${btn_novo_agendamento}    
    ...    ${checkbox_desligar}    ${btn_hora_device}    10    30    ${checkbox_notif_execucao}    Todos os Dias    ${btn_novo_agendamento}
    Então o agendamento é criado com sucesso