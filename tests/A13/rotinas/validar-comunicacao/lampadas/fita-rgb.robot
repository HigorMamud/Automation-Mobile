*** Settings ***

Documentation     Execução das rotinas como condição - Fita RGB
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_cores}    ${btn_cores}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB Ligou

Modo Efeitos Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB Modo Efeitos

Modo Música Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB Modo Música

Modo Colorido Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB Modo Colorido

Não Pertube Ativar Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita RGB Não Pertube Ativado

Não Pertube Desativar Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita RGB Não Pertube Desativado

Desligar Fita RGB
    Dado que clico no botão    ${device_fita_rgb}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_cores}    ${btn_cores}  
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB Desligou