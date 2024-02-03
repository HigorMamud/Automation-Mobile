*** Settings ***

Documentation     Sanity - Lâmpada WiFi
Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Desabilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push

Rotina condição Ligar Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Ligou
    Então salvo a rotina  

Rotina condição Modo Colorido Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Modo Colorido
    Então salvo a rotina 

Rotina condição Modo Efeitos Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Modo Efeitos
    Então salvo a rotina 
    
Rotina condição Modo Música Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Modo Música
    Então salvo a rotina     

Rotina condição Modo Branco Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Modo Branco
    Então salvo a rotina   

Rotina condição Brilho Maior 50% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Brilho Maior 50%
    Então salvo a rotina

Rotina condição Brilho Igual 50% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}       ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Brilho Igual 50%
    Então salvo a rotina

Rotina condição Brilho Menor 50% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_menorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Brilho Menor 50%
    Então salvo a rotina 

Rotina condição Brilho Igual 100% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}     ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Brilho Igual 100%
    Então salvo a rotina

Rotina condição Temperatura Maior 49% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Temperatura Maior 49%
    Então salvo a rotina

Rotina condição Temperatura Menor 49% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_menorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Temperatura Menor 49%
    Então salvo a rotina 

Rotina condição Temperatura Igual 100% Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Temperatura Igual 100%
    Então salvo a rotina

Rotina condição Não Pertube Ativar Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_naoperturbe_ativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Não Pertube Ativado
    Então salvo a rotina

Rotina condição Não Pertube Desativar Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_naoperturbe_desativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Não Pertube Desativado
    Então salvo a rotina

Rotina condição Desligar Lâmpada WiFi
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}   
    E defino as opções de Iluminação    Null    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}        ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Wifi Desligou
    Então salvo a rotina



Ligar Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Ligou

Brilho Maior 50% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Maior 50%

Brilho Menor 50% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Menor 50%

Brilho Igual 100% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Brilho Igual 100%

Temperatura Maior 49% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Maior 49%

Temperatura Menor 49% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Menor 49%

Temperatura Igual 100% Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Temperatura Igual 100%

Modo Colorido Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_cores}    ${btn_cores}    ${btn_cores}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Colorido

Modo Efeitos Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}    
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Efeitos

Modo Música Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_musica}    ${btn_modo_musica}    ${btn_modo_musica}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Música

Modo Branco Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Modo Branco

Não Pertube Ativar Lâmpada Wifi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Wifi Não Pertube Ativado

Não Pertube Desativar Lâmpada Wifi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Lâmpada Wifi Não Pertube Desativado

Desligar Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}    ${btn_modo_branco}   
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Wifi Desligou

Excluir todas as Notificações de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    Quando em notificação seleciono a opção    ${btn_alarme}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    Então notificação excluída com sucesso

Habilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push
