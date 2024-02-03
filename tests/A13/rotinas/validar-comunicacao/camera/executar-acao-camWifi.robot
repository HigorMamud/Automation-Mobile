*** Settings ***

Documentation    Smart Câmera Wifi
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Sensibilidade Média
    Dado que clico no dispositivo    ${device_cam_wifi}
    Quando executo as ações da câmera    Média    ${device_cam_wifi}    ${device_cam_wifi}    ${device_cam_wifi}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmWiFi Condiçao Alerta Mov Ligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Baixo
    Dado que clico no dispositivo    ${device_cam_wifi}
    Quando executo as ações da câmera    Baixo    ${device_cam_wifi}    ${device_cam_wifi}    ${device_cam_wifi}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmWiFi Condiçao Alerta Mov Desligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Alto
    Dado que clico no dispositivo    ${device_cam_wifi}
    Quando executo as ações da câmera    Alto    ${device_cam_wifi}    ${device_cam_wifi}    ${device_cam_wifi}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmWiFi Condiçao Alerta Mov Ligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Desligado
    Dado que clico no dispositivo    ${device_cam_wifi}
    Quando executo as ações da câmera    Desligado    ${device_cam_wifi}    ${device_cam_wifi}    ${device_cam_wifi}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}           