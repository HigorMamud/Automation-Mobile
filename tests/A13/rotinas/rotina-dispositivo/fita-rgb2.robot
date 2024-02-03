*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Start Screen Recording
#Stop Screen Recording 

Rotina tarefa Ligar e Modo Colorido Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB 2° Geração Ligar-Colorido
    Então salvo a rotina
    #Então salvo a rotina criada(TESTE SWIPE)    ${cod1}    ${cod2}    ${cod3}    ${cod4}

Rotina tarefa Desligar Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Fita RGB 2° Geração Desligar
    Então salvo a rotina

Rotina tarefa Ligar e Modo Efeitos Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB 2° Geração Ligar-Efeitos
    Então salvo a rotina

Rotina tarefa Ligar e Modo Música Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB 2° Geração Ligar-Música
    Então salvo a rotina

Rotina tarefa Não perturbe ativar Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_naoperturbe_ativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB 2° Geração Não Perturbe Ativar
    Então salvo a rotina

Rotina tarefa Não perturbe Desativar Fita RGB 2° Geração
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_rgb2}
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_naoperturbe_desativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita RGB 2° Geração Não Perturbe Desativar
    Então salvo a rotina