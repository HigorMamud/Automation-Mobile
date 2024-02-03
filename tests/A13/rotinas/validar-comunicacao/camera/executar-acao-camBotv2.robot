*** Settings ***

Documentation    Smart Câmera Bot v2
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Sensibilidade Média
    Dado que clico no dispositivo    ${device_cam_bot_v2}
    Quando executo as ações da câmera    Média    ${device_cam_bot_v2}    ${device_cam_bot_v2}    ${device_cam_bot_v2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBot2 Condiçao Alerta Mov Ligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Baixo
    Dado que clico no dispositivo    ${device_cam_bot_v2}
    Quando executo as ações da câmera    Baixo    ${device_cam_bot_v2}    ${device_cam_bot_v2}    ${device_cam_bot_v2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBot2 Condiçao Alerta Mov Ligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Alto
    Dado que clico no dispositivo    ${device_cam_bot_v2}
    Quando executo as ações da câmera    Alto    ${device_cam_bot_v2}    ${device_cam_bot_v2}    ${device_cam_bot_v2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBot2 Condiçao Alerta Mov Ligar Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Desligado
    Dado que clico no dispositivo    ${device_cam_bot_v2}
    Quando executo as ações da câmera    Desligado    ${device_cam_bot_v2}    ${device_cam_bot_v2}    ${device_cam_bot_v2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    CâmBot2 Condiçao Alerta Mov Desligar Foi acionado