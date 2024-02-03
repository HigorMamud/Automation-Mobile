*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Start Screen Recording
#Stop Screen Recording 

Rotina tarefa Ligar Modo branco e brilho 51% lâmpada RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino as opções de Iluminação    Média    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    RGB+ Ligar-Brilho50-Branco
    Então salvo a rotina

Rotina tarefa Ligar, Modo Colorido e Temperatura 50% lâmpada RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino as opções de Iluminação    Média    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_temperatura}    ${btn_salvar}    ${btn_selecionar_modo}    ${btn_modo_colorido}    ${btn_salvar}    ${ignora_erro}    ${btn_salvar}
    E salvo o nome da Rotina    RGB+ Ligar-Temperatura50-Colorido
    Então salvo a rotina

Rotina tarefa Desligar RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    RGB+ Desligar
    Então salvo a rotina

Rotina tarefa Ligar e Modo Efeitos RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    RGB+ Ligar-Efeitos
    Então salvo a rotina

Rotina tarefa Ligar e Modo Música RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino as opções de Iluminação    Null    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_musica}    ${btn_salvar}
    E salvo o nome da Rotina    RGB+ Ligar-Música
    Então salvo a rotina

Rotina tarefa Ligar Modo branco e brilho 0% lâmpada RGB+
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_rgb+}
    E defino as opções de Iluminação    Baixo    ${btn_ligar}    ${ignora_erro}    ${btn_mudar_brilho}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_branco}    ${btn_salvar}
    E salvo o nome da Rotina    RGB+ Ligar-Brilho 0%
    Então salvo a rotina