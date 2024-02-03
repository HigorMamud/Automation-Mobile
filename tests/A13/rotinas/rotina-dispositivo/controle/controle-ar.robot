*** Settings ***

Documentation    Smart Controle - Rotina Ar Condicionado
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Controle Ar condicionado marca Panasonic

Rotina com Controle Ar condicionado - Botões principais
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_ar}
    E entro na funções do controle
    E seleciono os botões do controle     ${btn_ligar}    ${diminuir}    ${diminuir}    ${aumentar}    ${aumentar}    ${refrescar}    ${aquecer}    ${ventilar}    ${baixa}    ${media}     ${alta}    ${automatico1}    ${automatico2}    
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Ar Condicionado Botôes principais
    Então salvo a rotina

Rotina com Controle Ar condicionado - Ligar
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_ar}
    E entro na funções do controle
    E seleciono os botões do controle     ${btn_ligar}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Ligar Ar
    Então salvo a rotina
