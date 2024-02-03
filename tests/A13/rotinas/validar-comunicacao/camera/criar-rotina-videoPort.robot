*** Settings ***

Documentation    Smart Vídeo Porteiro
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Condição Smart Vídeo Porteiro - Movimento detectado - Habilitar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_porteiro}
    E defino as condições da camera    Null    ${mov_detec1}    ${ignora_erro}   ${ignora_erro}
    E salvo o nome da Rotina    Port Condiçao Mov Detec Hab
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Condição Smart Vídeo Porteiro - Alguem tocando a campainha - Habilitar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_porteiro}
    E defino as condições da camera    Null    ${ignora_erro}   ${toc_campainha}    ${ignora_erro}
    E salvo o nome da Rotina    Port Condiçao Toc camp Hab
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Condição Smart Vídeo Porteiro - Movimento detectado e tocando a campainha - Habilitar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}   ${device_porteiro}
    E defino as condições da camera    Null    ${mov_detec1}    ${toc_campainha}   ${ignora_erro}
    E salvo o nome da Rotina    Port Condiçao Mov Detec & camp Hab
    E desmarco checkbox de todas as condições
    Então salvo a rotina        