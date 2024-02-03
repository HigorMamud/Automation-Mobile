*** Settings ***

Documentation     Executar Ação com Plug
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Ligar Plug
    Dado que clico no dispositivo    ${device_plug}     
    Quando executo as ações do dispositivo    ${btn_ligar}    ${device_plug}    ${device_plug}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Plug Ligar

Executar ação no dispositivo - Verificar push - Desligar Plug
    Dado que clico no dispositivo    ${device_plug}     
    Quando executo as ações do dispositivo    ${btn_desligar}    ${device_plug}    ${device_plug}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Plug Desligar