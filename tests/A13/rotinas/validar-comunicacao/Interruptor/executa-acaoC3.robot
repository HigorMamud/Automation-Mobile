*** Settings ***

Documentation     Executar ação no Interruptor com 3 circuitos em seguida verificar Push
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Ligar todos
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${liga_C1}    ${liga_C2}    ${liga_C3}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Ligar 3 Circuitos

Executar ação no dispositivo - Verificar push - Desligar Todos
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${desliga_C1}    ${desliga_C2}    ${desliga_C3}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Desligar 3 Circuitos    

Executar ação no dispositivo - Verificar push - Ligar Circuito 1
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${liga_C1}    ${device_interruptor}    ${device_interruptor}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Ligar Circuito 1

Executar ação no dispositivo - Verificar push - Desligar Circuito 1
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${desliga_C1}    ${device_interruptor}    ${device_interruptor}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Desligar Circuito 1

Executar ação no dispositivo - Verificar push - Ligar Circuito 2
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${device_interruptor}    ${liga_C2}    ${device_interruptor}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Ligar Circuito 2

Executar ação no dispositivo - Verificar push - Desligar Circuito 2
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${device_interruptor}    ${desliga_C2}    ${device_interruptor}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Desligar Circuito 2    

Executar ação no dispositivo - Verificar push - Ligar Circuito 3
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${device_interruptor}    ${device_interruptor}    ${liga_C3}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Ligar Circuito 3

Executar ação no dispositivo - Verificar push - Desligar Circuito 3
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo    ${device_interruptor}    ${device_interruptor}    ${desliga_C3}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Desligar Circuito 3      

Executar ação no dispositivo - Verificar push - Estado Inicial Ligar
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    536    1865    532    2206    ${btn_salvar}    ${btn_configuracoes_perfil}    ${liga_C1}    ${liga_C2}    ${liga_C3}            
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Estado Inicial Ligar 3 Circuitos

Executar ação no dispositivo - Verificar push - Estado Inicial Desligar
    Dado que clico no dispositivo    ${device_interruptor}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    544    2109    544    1976    ${btn_salvar}    ${btn_configuracoes_perfil}    ${desliga_C1}    ${desliga_C2}    ${desliga_C3}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor Estado Inicial Desligar 3 Circuitos    