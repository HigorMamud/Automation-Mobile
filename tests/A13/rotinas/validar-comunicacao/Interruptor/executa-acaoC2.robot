*** Settings ***

Documentation     Executar ação no Interruptor com 2 circuitos em seguida verificar Push
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Ligar todos
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${liga_C1}    ${liga_C2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Ligar Circuito 1

Executar ação no dispositivo - Verificar push - Desligar Todos
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${desliga_C1}    ${desliga_C2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Desligar Circuito 1    

Executar ação no dispositivo - Verificar push - Ligar Circuito 1
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${liga_C1}    ${device_interruptor_c2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Ligar Circuito 1

Executar ação no dispositivo - Verificar push - Desligar Circuito 1
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${desliga_C1}    ${device_interruptor_c2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Desligar Circuito 1

Executar ação no dispositivo - Verificar push - Ligar Circuito 2
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${device_interruptor_c2}    ${liga_C2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Ligar Circuito 2

Executar ação no dispositivo - Verificar push - Desligar Circuito 2
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo    ${device_interruptor_c2}    ${desliga_C2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Desligar Circuito 2 

Executar ação no dispositivo - Verificar push - Estado Inicial Ligar
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    536    1865    532    2206    ${btn_salvar}    ${btn_configuracoes_perfil}    ${liga_C1}    ${liga_C2}    ${device_interruptor_c2}        
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Estado Inicial Ligar

Executar ação no dispositivo - Verificar push - Estado Inicial Desligar
    Dado que clico no dispositivo    ${device_interruptor_c2}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    544    2109    544    1976    ${btn_salvar}    ${btn_configuracoes_perfil}    ${desliga_C1}    ${desliga_C2}    ${device_interruptor_c2}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 2C Estado Inicial Desligar      

