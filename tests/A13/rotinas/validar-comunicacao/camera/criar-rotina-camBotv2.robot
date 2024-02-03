*** Settings ***

Documentation    Smart Câmera Bot v2
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Condição Smart Câmera Bot v2 - Alerta de Movimento Ligado    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v2}
    E defino as condições da camera    Null    ${ignora_erro}    ${btn_ligar}   ${ignora_erro}
    E salvo o nome da Rotina    CâmBot2 Condiçao Alerta Mov Ligar
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Condição Smart Câmera Bot v2 - Alerta de Movimento Desligado    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v2}
    E defino as condições da camera    Null    ${ignora_erro}    ${btn_desligar}   ${ignora_erro}
    E salvo o nome da Rotina    CâmBot2 Condiçao Alerta Mov Desligar
    E desmarco checkbox de todas as condições
    Então salvo a rotina