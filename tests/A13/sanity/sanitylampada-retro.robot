*** Settings ***

Documentation     Desabilitar Notificações Push
Resource          ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Desabilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push

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
    E defino as opções de Iluminação    Média    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_maiorque}      ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho Maior 50%
    Então salvo a rotina

Rotina condição Brilho Menor 50% Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}  
    E defino as opções de Iluminação    Baixo    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_menorque}    ${btn_salvar}    ${ignora_erro}       ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho Menor 50%
    Então salvo a rotina

Rotina condição Brilho Igual a 100% Lâmpada Retrô
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_retro}  
    E defino as opções de Iluminação    Alto    ${ignora_erro}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}      ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}     ${btn_salvar}
    E salvo o nome da Rotina    Lâmpada Retrô Brilho igual a 100%
    Então salvo a rotina

Ligar Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_ligar}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Ligou

Brilho 50% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho Maior 50%
    
Brilho Menor 50% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho Menor 50%

Brilho Igual 100% Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Brilho igual a 100%

Modo Efeitos Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Modo Efeitos

Modo Branco Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}             
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Modo Branco

Desligar Lâmpada Retrô
    Dado que clico no botão    ${device_lampada_retro}
    Quando executo ações no dispositivo    Null    ${btn_modo_branco}     ${btn_desligar}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Lâmpada Retrô Desligou

Excluir todas as Notificações de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    Quando em notificação seleciono a opção    ${btn_alarme}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    Então notificação excluída com sucesso

Habilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push