*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Wifi
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Ligou

Brilho Maior 50% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Maior 50%

Brilho Menor 50% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Menor 50%

Brilho Igual 100% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Igual 100%

Temperatura Maior 49% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Maior 49%

Temperatura Menor 49% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Menor 49%

Temperatura Igual 100% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Igual 100%

Modo Colorido Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Colorido

Modo Efeitos Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}    
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Efeitos

Modo Música Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Música

Modo Branco Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Branco

Não Pertube Ativar Lâmpada Wifi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Wifi Não Pertube Ativado

Não Pertube Desativar Lâmpada Wifi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Wifi Não Pertube Desativado

Desligar Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Desligou
