*** Settings ***

Documentation     Execução das rotinas como condição - Painel LED
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Ligou

Brilho Maior 50% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Brilho Maior 50%

Brilho Menor 50% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Brilho Menor 50%

Brilho Igual 100% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Brilho Igual 100%

Temperatura Maior 49% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Temperatura Maior 49%

Temperatura Menor 49% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Temperatura Menor 49%

Temperatura Igual 100% Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Temperatura Igual 100%

Modo Efeitos Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}    
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Modo Efeitos

Modo Branco Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Modo Branco

Não Pertube Ativar Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Painel LED Não Pertube Ativado

Não Pertube Desativar Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Painel LED Não Pertube Desativado

Desligar Painel LED
    Dado que clico no botão    ${device_painel}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Painel LED Desligou