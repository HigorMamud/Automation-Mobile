*** Settings ***

Documentation    Smart Câmera com Bateria v1
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Sensibilidade Igual a 5
    Dado que clico no dispositivo    ${device_cam_bateria}
    Quando executo as ações da câmera    Médio CamBatv1    ${device_cam_bateria}    ${device_cam_bateria}    ${device_cam_bateria}
    Capture Page Screenshot
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv1 Condiçao Sensi Igual a 5 Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Menor que 5
    Dado que clico no dispositivo    ${device_cam_bateria}
    Quando executo as ações da câmera    Baixo CamBatv1    ${device_cam_bateria}    ${device_cam_bateria}    ${device_cam_bateria}
    Capture Page Screenshot
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv1 Condiçao Sensi Menor que 5 Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Maior que 5
    Dado que clico no dispositivo    ${device_cam_bateria}
    Quando executo as ações da câmera    Alto CamBatv1    ${device_cam_bateria}    ${device_cam_bateria}    ${device_cam_bateria}
    Capture Page Screenshot
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv1 Condiçao Sensi Maior que 5 Foi acionado    

