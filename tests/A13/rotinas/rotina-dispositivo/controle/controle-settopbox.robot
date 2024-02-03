*** Settings ***

Documentation    Smart Controle Set top box
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Controle marca 10moons

Rotina com Controle Set Top Box - Botões principais
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_settopbox}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_direita}    ${tv_direita}    ${tv_ok}    ${tv_canal-}    ${tv_volume-}    ${tv_mutar}    ${tv_baixo}    ${tv_volume+}     ${tv_canal+}    ${tv_cima}    ${tv_baixo}    ${tv_baixo}  
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Set top Box Botôes principais
    Então salvo a rotina

Rotina com Controle Set Top Box - Ligar/Desligar
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_settopbox}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Set top Box Ligar/Desligar 
    Então salvo a rotina