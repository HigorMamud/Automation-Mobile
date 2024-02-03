*** Settings ***

Documentation    Smart Câmera 360 WiFi
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Condição Câmera 360 - Sensibilidade média    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino as condições da camera    Média    ${mov_detec}    ${baixa}   ${btn_salvar}
    E salvo o nome da Rotina    Câm360 Condiçao Sensi Média
    E desmarco checkbox de todas as condições
    Então salvo a rotina


Rotina Condição Câmera 360 - Sensibilidade baixa   
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino as condições da camera    Baixo    ${mov_detec}    ${baixa}    ${btn_salvar}
    E salvo o nome da Rotina    Câm360 Condiçao Sensi Baixa
    E desmarco checkbox de todas as condições
    Então salvo a rotina
    

Rotina Condição Câmera 360 - Sensibilidade Alta   
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino as condições da camera    Alto    ${mov_detec}    ${baixa}    ${btn_salvar}
    E salvo o nome da Rotina    Câm360 Condiçao Sensi Alta
    E desmarco checkbox de todas as condições
    Então salvo a rotina