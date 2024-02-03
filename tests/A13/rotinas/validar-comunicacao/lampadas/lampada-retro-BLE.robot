*** Settings ***

Documentation     Execução das rotinas como condição - Lâmpada Retrô BLE
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_ligar}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Ligou

Brilho 50% Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Brilho Maior 50%
    
Brilho Menor 50% Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Brilho Menor 50%

Brilho Igual 100% Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Brilho igual a 100%

Modo Efeitos Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Modo Efeitos

Modo Branco Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Modo Branco

Desligar Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}     ${btn_desligar}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô BLE Desligou

Não Pertube Ativar Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Retrô BLE Não Pertube Ativado

Não Pertube Desativar Lâmpada Retrô BLE
    Dado que clico no botão    ${device_lampada_retro_ble}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Retrô BLE Não Pertube Desativado  