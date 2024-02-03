*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Start Screen Recording
#Stop Screen Recording 

Rotina tarefa Ligar Modo branco e brilho Luminária de Mesa  
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino as opções de Iluminação    Média     ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    Luminaria de Mesa Ligar-Brilho50-Branco
    Então salvo a rotina

Rotina tarefa Ligar, Modo Colorido e Temperatura Luminária de Mesa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino as opções de Iluminação    Média    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_salvar}    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Luminaria de Mesa Ligar-Temperatura50-Colorido
    Então salvo a rotina

Rotina tarefa Desligar Luminária de Mesa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Luminaria de Mesa Desligar
    Então salvo a rotina

Rotina tarefa Ligar e Modo Efeitos Luminária de Mesa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino as opções de Iluminação    null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    Luminaria de Mesa Ligar-Efeitos
    Então salvo a rotina

Rotina tarefa Ligar e Modo Música Luminária de Mesa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino as opções de Iluminação    null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}
    E salvo o nome da Rotina    Luminaria de Mesa Ligar-Música
    Então salvo a rotina

Rotina tarefa Ligar Modo branco e brilho 0% Luminária de Mesa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_luminaria}
    E defino as opções de Iluminação    Baixo    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    Luminaria de Mesa Ligar-Brilho 0%
    Então salvo a rotina