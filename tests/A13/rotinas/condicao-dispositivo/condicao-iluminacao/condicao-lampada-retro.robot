*** Settings ***

Documentation    Smart Lâmpada Retrô - Rotina com Condições
Resource         ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina condição Ligar Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}   
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Ligou
    Então salvo a rotina

Rotina condição Desligar Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}   
    E defino as opções de Iluminação    Null    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Desligou
    Então salvo a rotina

Rotina condição Modo Branco lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}   
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Modo Branco
    Então salvo a rotina

Rotina condição Ligar e Modo Efeitos Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}   
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Modo Efeitos
    Então salvo a rotina

Rotina condição Brilho Maior 50% Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho Maior 50%
    Então salvo a rotina

Rotina condição Brilho Menor 50% Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_menorque}    ${btn_salvar}    ${ignora_erro}       ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho Menor 50%
    Então salvo a rotina

Rotina condição Brilho Igual a 100% Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho igual a 100%
    Então salvo a rotina