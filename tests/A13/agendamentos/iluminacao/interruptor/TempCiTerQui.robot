*** Settings ***

Documentation    Smart Interruptor Wi-Fi

Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Circuito 1       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C2
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Circuito 2       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C3
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Circuito 3       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1 e C2
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Circuito 1 2       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C1, C2 e C3
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Todos       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Ter Qui - Acionar C2 e C3
   Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento    ${btn_agen_PROVISORIO}    ${btn_novo_agendamento}    ${tempo_ciclo_inter}    ${tempo_ciclo_inter}
    Quando defino o horario de inicio e fim   ${tempo_ciclo_inter}    ${btn_hora_ini}    10    0    ${btn_hora_fin}    10    32
    E defino os dias e ações    ${tempo_ciclo_inter}    Ter Qui    ${tempo_ciclo_inter}    Circuito 2 3       ${tempo_ciclo_inter}  
    Então o agendamento do Interruptor é criado com sucesso

