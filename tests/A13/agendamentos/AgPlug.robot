*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento PLUG Ligado - Uma vez
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é criado com sucesso

Agendamento PLUG Desligado - Uma vez
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é criado com sucesso    

Agendamento PLUG Ligado - Seg Qua Sex
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é criado com sucesso

Agendamento PLUG Desligado - Seg Qua Sex
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é criado com sucesso

Agendamento PLUG Ligado - Ter Qui
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é criado com sucesso

Agendamento PLUG Desligado - Ter Qui
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é criado com sucesso 

Agendamento PLUG Ligado - Dias da semana
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é criado com sucesso

Agendamento PLUG Desligado - Dias da semana
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é criado com sucesso   
    
Agendamento PLUG Ligado - Todos os dias
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é criado com sucesso

Agendamento PLUG Desligado - Todos os dias
    Dado que clico no botão    ${device_plug}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é criado com sucesso