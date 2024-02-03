*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Spot BLE
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Ligou

Brilho Maior 50% Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Brilho Maior 50%

Brilho Menor 50% Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Brilho Menor 50%

Brilho Igual 100% Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Brilho Igual 100%

Modo Colorido Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Modo Colorido

Modo Efeitos Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Modo Efeitos

Modo Música Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Modo Música

Modo Branco Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Modo Branco

Desligar Smart Lampada Spot BLE
    Dado que clico no botão    ${device_spot_BLE}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Smart Lampada Spot BLE Desligou