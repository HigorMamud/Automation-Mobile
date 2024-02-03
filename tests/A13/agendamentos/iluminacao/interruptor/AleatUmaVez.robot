*** Settings ***

Documentation    Smart Interruptor Wi-Fi

Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C1
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Circuito 1    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C2
    Dado que clico no dispositivo    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    10    38    ${btn_hora_fin}    11    20
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Circuito 2    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C3
    Dado que clico no dispositivo    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    11    33    ${btn_hora_fin}    12    5    
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Circuito 3    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso   

Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C1 e C2
    Dado que clico no dispositivo    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    12    7    ${btn_hora_fin}    12    40
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Circuito 1 2    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso 

Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C1, C2 e C3
    Dado que clico no dispositivo    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    12    42    ${btn_hora_fin}    13    20
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Todos    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso  

Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - Acionar C1 e C3
    Dado que clico no dispositivo    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    Quando defino o horario de inicio e fim   ${tempo_aleat_inter}    ${btn_hora_ini}    13    22    ${btn_hora_fin}    13    56
    E defino os dias e ações    ${tempo_aleat_inter}    Uma vez    ${tempo_aleat_inter}    Circuito 1 3    ${tempo_aleat_inter}
    Então o agendamento do Interruptor é criado com sucesso              