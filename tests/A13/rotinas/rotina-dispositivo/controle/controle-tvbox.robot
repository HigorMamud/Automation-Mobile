*** Settings ***

Documentation    Smart Controle Universal TV BOX
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Controle TVBOX marca Huawei

Rotina com Controle TVBOX - Botões principais
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tvbox}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_direita}    ${tv_direita}    ${play}    ${pause}    ${tv_home}    ${tv_baixo}    ${tv_cima}    ${tv_ok}    ${tv_volume+}    ${tv_volume+}    ${tv_volume-}    ${menu}
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    TVBOX Botôes principais
    Então salvo a rotina

Rotina com Controle TVBOX - Ligar/Desligar
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tvbox}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Ligar/Desligar TVBOX
    Então salvo a rotina
