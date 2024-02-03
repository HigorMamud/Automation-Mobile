*** Settings ***

Documentation    Smart Interruptor Wi-Fi

Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim - Agendar   ${agenda_interruptor}    ${btn_hora_device}    10    0
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda C1    ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C2
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim - Agendar   ${btn_novo_agendamento}    ${btn_hora_device}    10    38 
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda C2    ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso
    
Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C3
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim - Agendar   ${btn_novo_agendamento}    ${btn_hora_device}    11    33
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda C3    ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso   

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1 e C2
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim - Agendar   ${btn_novo_agendamento}    ${btn_hora_device}    12    7
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda C1 C2    ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso 

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1, C2 e C3
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim - Agendar   ${btn_novo_agendamento}    ${btn_hora_device}    13    22
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda Todos C    ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1 e C3
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${agenda_interruptor}    ${btn_novo_agendamento}
    Quando defino o horario de inicio e fim   ${btn_novo_agendamento}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${btn_novo_agendamento}    Ter Qui    ${btn_novo_agendamento}    Agenda C1 C3   ${btn_novo_agendamento}
    Então o agendamento do Interruptor é criado com sucesso               