*** Settings ***

Documentation    Smart Câmera com Bateria v1
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Condição Câmera Batv1 - Sensibilidade Igual a 5    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E executo as ações da câmera BAT    Média    ${btn_ligar1}    ${btn_ligar2}    ${nvl_sensi}    ${ignora_sensi}    ${btn_salvar}
    E salvo o nome da Rotina    CâmBatv1 Condiçao Sensi Igual a 5
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Condição Câmera Batv1 - Sensibilidade Menor que 5    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E executo as ações da câmera BAT    Média    ${btn_ligar1}    ${btn_ligar2}    ${nvl_sensi}    ${btn_menorque}    ${btn_salvar}
    E salvo o nome da Rotina    CâmBatv1 Condiçao Sensi Menor que 5
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Condição Câmera Batv1 - Sensibilidade Maior que 5    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E executo as ações da câmera BAT    Média    ${btn_ligar1}    ${btn_ligar2}    ${nvl_sensi}    ${btn_maiorque}    ${btn_salvar}
    E salvo o nome da Rotina    CâmBatv1 Condiçao Sensi Maior que 5
    E desmarco checkbox de todas as condições
    Então salvo a rotina       

Rotina Condição Câmera Batv1 - Detecção Desligar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E executo as ações da câmera BAT    Null    ${btn_desligar1}    ${btn_desligar2}    ${tela_rotinas}    ${tela_rotinas}    ${tela_rotinas}
    E salvo o nome da Rotina    CâmBatv1 Condiçao Detec Desligada
    E desmarco checkbox de todas as condições
    Então salvo a rotina      