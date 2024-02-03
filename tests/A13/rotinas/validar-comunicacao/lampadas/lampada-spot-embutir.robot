*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Spot de Embutir
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Ligou

Brilho Maior 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Maior 50%

Brilho Menor 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Menor 50%

Brilho Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Igual 100%

Temperatura Maior 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Maior 49%

Temperatura Menor 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Menor 49%

Temperatura Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Igual 100%

Modo Colorido Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Colorido

Modo Efeitos Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Efeitos

Modo Música Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Música

Modo Branco Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Branco

Desligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Desligou