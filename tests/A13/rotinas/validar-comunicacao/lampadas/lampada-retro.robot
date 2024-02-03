*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Retrô
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_ligar}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Ligou

Brilho 50% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho Maior 50%
    
Brilho Menor 50% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho Menor 50%

Brilho Igual 100% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho igual a 100%

Modo Efeitos Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Modo Efeitos

Modo Branco Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Modo Branco

Desligar Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}     ${btn_desligar}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Desligou