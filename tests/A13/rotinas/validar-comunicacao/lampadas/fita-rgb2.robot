*** Settings ***

Documentation     Execução das rotinas como condição - Fita RGB 2ª Geração
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_cores}    ${btn_cores}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB 2ª Geração Ligou

Modo Efeitos Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB 2ª Geração Modo Efeitos

Modo Música Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB 2ª Geração Modo Música

Modo Colorido Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB 2ª Geração Modo Colorido

Não Pertube Ativar Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita RGB 2ª Geração Não Pertube Ativado

Não Pertube Desativar Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita RGB 2ª Geração Não Pertube Desativado

Desligar Fita RGB 2ª Geração
    Dado que clico no botão    ${device_fita_rgb2}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_cores}    ${btn_cores}  
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita RGB 2ª Geração Desligou