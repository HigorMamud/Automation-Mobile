*** Settings ***

Documentation     Sanity - Lâmpada Smart Luminária Spot WiFi de Embutir
Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Desabilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push

Rotina condição Ligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Ligou
    Então salvo a rotina  

Rotina condição Modo Colorido Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Modo Colorido
    Então salvo a rotina 

Rotina condição Modo Efeitos Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Modo Efeitos
    Então salvo a rotina 
    
Rotina condição Modo Música Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Modo Música
    Então salvo a rotina     

Rotina condição Modo Branco Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Modo Branco
    Então salvo a rotina   

Rotina condição Brilho Maior 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Brilho Maior 50%
    Então salvo a rotina

Rotina condição Brilho Igual 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}       ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Brilho Igual 50%
    Então salvo a rotina

Rotina condição Brilho Menor 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_menorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Brilho Menor 50%
    Então salvo a rotina 

Rotina condição Brilho Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}     ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Brilho Igual 100%
    Então salvo a rotina

Rotina condição Temperatura Maior 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Temperatura Maior 49%
    Então salvo a rotina

Rotina condição Temperatura Menor 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_menorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Temperatura Menor 49%
    Então salvo a rotina 

Rotina condição Temperatura Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Temperatura Igual 100%
    Então salvo a rotina

Rotina condição Desligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_spot_embutir}   
    E defino as opções de Iluminação    Null    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Spot WiFi de Embutir Desligou
    Então salvo a rotina

Ligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Ligou

Brilho Maior 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Maior 50%

Brilho Menor 50% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Menor 50%

Brilho Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Brilho Igual 100%

Temperatura Maior 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Maior 49%

Temperatura Menor 49% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Menor 49%

Temperatura Igual 100% Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Temperatura Igual 100%

Modo Colorido Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Colorido

Modo Efeitos Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Efeitos

Modo Música Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Música

Modo Branco Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Modo Branco

Desligar Lampada Smart Luminária Spot WiFi de Embutir
    Dado que clico no botão    ${device_spot_embutir}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Spot WiFi de Embutir Desligou

Excluir todas as Notificações de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    Quando em notificação seleciono a opção    ${btn_alarme}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    Então notificação excluída com sucesso

Habilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push