*** Settings ***

Documentation       Vídeo Porteiro WiFi
Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Vídeo Porteiro - Ligar Detecção de Movimento Sensibilidade Média
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_porteiro}
    E defino a tarefa para Ligar apenas - Sensibilidade Média    ${btn_ligar1}
    E salvo o nome da Rotina    Porteiro Ligar Sensibilidade Média
    Então salvo a rotina

Rotina com Vídeo Porteiro - Ligar Detecção de Movimento Sensibilidade Baixa
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_porteiro}
    E defino a tarefa para Ligar apenas    ${btn_ligar1}
    E salvo o nome da Rotina    Porteiro Ligar Sensibilidade Baixa
    Então salvo a rotina    

Rotina com Vídeo Porteiro - Desligar Detecção de Movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_porteiro}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Porteiro Desligar
    Então salvo a rotina
