*** Settings ***

Documentation       Smart Fechadura
Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Smart Fechadura - Abrir, trancar a porta em 15 seg, volum Alto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura - 15s   ${btn_abrir}    ${btn_ligado_fech}
    E salvo o nome da Rotina    Fechadura Abrir - Ligado 15s - Alto
    Então salvo a rotina

Rotina com Smart Fechadura - Abrir, trancar a porta em 0 seg, volum Alto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura - 0s    ${btn_abrir}    ${btn_ligado_fech}
    E salvo o nome da Rotina    Fechadura Abrir - Ligado 0s - Mudo
    Então salvo a rotina    

Rotina com Smart Fechadura - Abrir Manualmente
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura   ${btn_abrir}    ${btn_desligado_fech}
    E salvo o nome da Rotina    Fechadura Abrir Manualmente
    Então salvo a rotina  

Rotina com Smart Fechadura - Fechar Manualmente
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura   ${btn_fechar}    ${btn_desligado_fech}
    E salvo o nome da Rotina    Fechadura Fechar Manualmente
    Então salvo a rotina      

Rotina com Smart Fechadura - Fechar, trancar a porta em 15 seg, volum Alto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura - 15s   ${btn_fechar}    ${btn_ligado_fech}
    E salvo o nome da Rotina    Fechadura Fechar - Ligado 15s - Alto
    Então salvo a rotina    

Rotina com Smart Fechadura - Fechar, trancar a porta em 0 seg, volum Alto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_fechadura}
    E defino as tarefas da fechadura - 0s    ${btn_fechar}    ${btn_ligado_fech}
    E salvo o nome da Rotina    Fechadura Fechar - Ligado 0s - Mudo
    Então salvo a rotina
    