*** Settings ***

Documentation     Execução das rotinas como condição - Luminária de Mesa
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Ligou

Brilho Maior 50% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Brilho Maior 50%

Brilho Menor 50% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Brilho Menor 50%

Brilho Igual 100% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Brilho Igual 100%

Temperatura Maior 49% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Temperatura Maior 49%

Temperatura Menor 49% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Temperatura Menor 49%

Temperatura Igual 100% Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Temperatura Igual 100%

Modo Colorido Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Modo Colorido

Modo Efeitos Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}    
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Modo Efeitos

Modo Música Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Modo Música

Modo Branco Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Modo Branco

Desligar Luminária de mesa
    Dado que clico no botão    ${device_luminaria}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Luminária de mesa Desligou