*** Settings ***

Documentation    Smart Lâmpada Spot BLE - Rotina com Condições
Resource         ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
# Rotina condição Ligar Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
#     E salvo o nome da Rotina     Smart Lampada Spot BLE Ligou
#     Então salvo a rotina  

# Rotina condição Modo Colorido Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
#     E salvo o nome da Rotina     Smart Lampada Spot BLE Modo Colorido
#     Então salvo a rotina 

# Rotina condição Modo Efeitos Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
#     E salvo o nome da Rotina     Smart Lampada Spot BLE Modo Efeitos
#     Então salvo a rotina 
    
# Rotina condição Modo Música Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
#     E salvo o nome da Rotina      Smart Lampada Spot BLE Modo Música
#     Então salvo a rotina     

# Rotina condição Modo Branco Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
#     E salvo o nome da Rotina      Smart Lampada Spot BLE Modo Branco
#     Então salvo a rotina   

Rotina condição Brilho Maior 50% Smart Lampada Spot BLE
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina      Smart Lampada Spot BLE Brilho Maior 50%
    Então salvo a rotina

Rotina condição Brilho Igual 50% Smart Lampada Spot BLE
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}       ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina      Smart Lampada Spot BLE Brilho Igual 50%
    Então salvo a rotina

Rotina condição Brilho Menor 50% Smart Lampada Spot BLE
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_menorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina      Smart Lampada Spot BLE Brilho Menor 50%
    Então salvo a rotina 

Rotina condição Brilho Igual 100% Smart Lampada Spot BLE
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_brilho_retro}    ${btn_salvar}     ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina      Smart Lampada Spot BLE Brilho Igual 100%
    Então salvo a rotina

# Rotina condição Desligar Smart Lampada Spot BLE
#     Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
#     E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
#     E clico em adicionar condição    ${btn_alteracao_dispositivo}
#     Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_BLE}   
#     E defino as opções de Iluminação    Null    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
#     E salvo o nome da Rotina     Smart Lampada Spot BLE Desligou
#     Então salvo a rotina