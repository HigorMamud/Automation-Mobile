*** Settings ***

Documentation    Smart Vídeo Porteiro
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Executar ação no dispositivo - Verificar push - Sensibilidade Média
    Dado que clico no dispositivo    ${device_porteiro}
    Quando executo as ações da câmera    Média    ${device_porteiro}    ${device_porteiro}    ${device_porteiro}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    Câm360 Condiçao Sensi Média Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Baixo
    Dado que clico no dispositivo    ${device_porteiro}
    Quando executo as ações da câmera    Baixo    ${device_porteiro}    ${device_porteiro}    ${device_porteiro}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    Câm360 Condiçao Sensi Baixa Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Alto
    Dado que clico no dispositivo    ${device_porteiro}
    Quando executo as ações da câmera    Alto    ${device_porteiro}    ${device_porteiro}    ${device_porteiro}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}  
    Então recebo notificação push    Câm360 Condiçao Sensi Alta Foi acionado

Executar ação no dispositivo - Verificar push - Sensibilidade Desligado
    Dado que clico no dispositivo    ${device_porteiro}
    Quando executo as ações da câmera    Desligado    ${device_porteiro}    ${device_porteiro}    ${device_porteiro}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}