*** Settings ***

Documentation    Smart Câmera com Bateria v2
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Sensibilidade Igual a 5
    Dado que clico no dispositivo    ${device_cam_bateria2}
    Quando executo as ações da câmera    Médio CâmBatv2    ${device_cam_bateria2}    ${device_cam_bateria2}    ${device_cam_bateria2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv2 Condiçao Sensi Igual a 5 Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Menor que 5
    Dado que clico no dispositivo    ${device_cam_bateria2}
    Quando executo as ações da câmera    Baixo CâmBatv2    ${device_cam_bateria2}    ${device_cam_bateria2}    ${device_cam_bateria2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv2 Condiçao Sensi Menor que 5 Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Maior que 5
    Dado que clico no dispositivo    ${device_cam_bateria2}
    Quando executo as ações da câmera    Alto CâmBatv2    ${device_cam_bateria2}    ${device_cam_bateria2}    ${device_cam_bateria2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv2 Condiçao Sensi Maior que 5 Foi acionado

Executar ação no dispositivo - Verificar push - Detec Desligada
    Dado que clico no dispositivo    ${device_cam_bateria2}
    Quando executo as ações da câmera    Alto CâmBatv2    ${device_cam_bateria2}    ${device_cam_bateria2}    ${device_cam_bateria2}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    CâmBatv2 Condiçao Detec Desligada Foi acionado    