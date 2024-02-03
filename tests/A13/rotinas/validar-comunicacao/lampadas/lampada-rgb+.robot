*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada RGB+
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Ligou

Brilho Maior 50% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Brilho Maior 50%

Brilho Menor 50% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Brilho Menor 50%

Brilho Igual 100% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Brilho Igual 100%

Temperatura Maior 49% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Temperatura Maior 49%

Temperatura Menor 49% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Temperatura Menor 49%

Temperatura Igual 100% Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Temperatura Igual 100%

Modo Colorido Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Modo Colorido

Modo Efeitos Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Modo Efeitos

Modo Música Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Modo Música

Modo Branco Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Modo Branco

Desligar Lâmpada RGB+
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    RGB+ Desligou