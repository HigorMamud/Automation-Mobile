*** Settings ***

Documentation     Executar ação no Interruptor com 1 Circuito em seguida verificar Push
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Ligar Circuito
    Dado que clico no dispositivo    ${device_interruptor_c1}     
    Quando executo as ações do dispositivo    ${liga_C1}    ${device_interruptor_c1}    ${device_interruptor_c1}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 1C Ligar Circuito

Executar ação no dispositivo - Verificar push - Desligar Circuito
    Dado que clico no dispositivo    ${device_interruptor_c1}     
    Quando executo as ações do dispositivo    ${desliga_C1}    ${device_interruptor_c1}    ${device_interruptor_c1}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 1C Desligar Circuito

Executar ação no dispositivo - Verificar push - Estado Inicial Ligar
    Dado que clico no dispositivo    ${device_interruptor_c1}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    536    1865    532    2206    ${btn_salvar}    ${btn_configuracoes_perfil}    ${device_interruptor_c1}    ${device_interruptor_c1}    ${device_interruptor_c1}            
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 1C Estado Inicial Ligar

Executar ação no dispositivo - Verificar push - Estado Inicial Desligar
    Dado que clico no dispositivo    ${device_interruptor_c1}     
    Quando executo as ações do dispositivo nas configurações    ${btn_configuracoes}    ${estado_inicial}    544    2109    544    1976    ${btn_salvar}    ${btn_configuracoes_perfil}    ${device_interruptor_c1}    ${device_interruptor_c1}    ${device_interruptor_c1}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Interruptor 1C Estado Inicial Desligar    