*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Start Screen Recording
#Stop Screen Recording 

Rotina tarefa Ligar Modo branco e brilho 51% Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Média    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Ligar-Brilho50-Branco
    Então salvo a rotina

Rotina tarefa Ligar e Temperatura 50% Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Média    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_salvar}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Ligar-Temperatura50
    Então salvo a rotina

Rotina tarefa Desligar Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Fita Multi Desligar
    Então salvo a rotina

Rotina tarefa Ligar e Modo Efeitos Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Ligar-Efeitos
    Então salvo a rotina

Rotina tarefa Ligar Modo branco e brilho 0% Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Baixo    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Ligar-Brilho 0%
    Então salvo a rotina

Rotina tarefa Não perturbe ativar Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_naoperturbe_ativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Não Perturbe Ativar
    Então salvo a rotina

Rotina tarefa Não perturbe Desativar Fita Multitemperatura
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_fita_multi}
    E defino as opções de Iluminação    Null    ${ignora_erro}    ${btn_naoperturbe_desativar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    Fita Multi Não Perturbe Desativar
    Então salvo a rotina