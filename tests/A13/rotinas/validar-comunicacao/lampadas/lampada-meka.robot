*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Meka
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Ligou

Brilho Maior 50% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Brilho Maior 50%

Brilho Menor 50% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Brilho Menor 50%

Brilho Igual 100% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Brilho Igual 100%

Temperatura Maior 49% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Temperatura Maior 49%

Temperatura Menor 49% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Temperatura Menor 49%

Temperatura Igual 100% Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Temperatura Igual 100%

Modo Colorido Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Modo Colorido

Modo Efeitos Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}    
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Modo Efeitos

Modo Música Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Modo Música

Modo Branco Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Modo Branco

Desligar Lâmpada Meka
    Dado que clico no botão    ${device_lampada_meka}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Meka Desligou