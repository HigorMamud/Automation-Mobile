*** Settings ***

Documentation    Smart Câmera Bot v1
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Condição Smart Câmera Bot v1 - Movimento detectado - Habilitar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as condições da camera    Null    ${mov_detec1}    ${ignora_erro}   ${ignora_erro}
    E salvo o nome da Rotina    CâmBot1 Condiçao Mov Detec Hab
    E desmarco checkbox de todas as condições
    Então salvo a rotina

