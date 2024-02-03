*** Settings ***

Documentation    Smart Fita RGB - Rotina com Condições
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina condição Ligar Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}   
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Ligou
    Então salvo a rotina  

Rotina condição Modo Colorido Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Modo Colorido
    Então salvo a rotina 

Rotina condição Modo Efeitos Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Modo Efeitos
    Então salvo a rotina 
    
Rotina condição Modo Música Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Modo Música
    Então salvo a rotina     

Rotina condição Não Pertube Ativar Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}  
    E defino as opções de Iluminação    Null    ${btn_naoperturbe_ativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Não Pertube Ativado
    Então salvo a rotina

Rotina condição Não Pertube Desativar Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb} 
    E defino as opções de Iluminação    Null    ${btn_naoperturbe_desativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Não Pertube Desativado
    Então salvo a rotina

Rotina condição Desligar Fita RGB
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb}   
    E defino as opções de Iluminação    Null    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB Desligou
    Então salvo a rotina