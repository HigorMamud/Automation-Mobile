*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Start Screen Recording
#Stop Screen Recording 

Rotina tarefa Ligar Modo branco e brilho lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    Média     ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Brilho50-Branco
    Então salvo a rotina

Rotina tarefa Ligar, Modo Colorido lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    Média   ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Colorido
    Então salvo a rotina

Rotina tarefa Desligar Lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Wifi Desligar
    Então salvo a rotina

Rotina tarefa Ligar e Modo Efeitos Lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Efeitos
    Então salvo a rotina

Rotina tarefa Ligar e Modo Música Lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Música
    Então salvo a rotina

Rotina tarefa Ligar Modo branco e brilho 0% lâmpada WiFi
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    Baixo    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Brilho 0%
    Então salvo a rotina