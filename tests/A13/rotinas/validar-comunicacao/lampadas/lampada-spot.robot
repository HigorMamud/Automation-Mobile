*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Spot
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Ligou

Brilho Maior 50% Smart Lampada Spot
    Dado que clico no botão    $${device_spot}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Brilho Maior 50%

Brilho Menor 50% Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Brilho Menor 50%

Brilho Igual 100% Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Brilho Igual 100%

Modo Colorido Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Modo Colorido

Modo Efeitos Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Modo Efeitos

Modo Música Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Modo Música

Modo Branco Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Modo Branco

Desligar Smart Lampada Spot
    Dado que clico no botão    ${device_spot}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot Desligou
