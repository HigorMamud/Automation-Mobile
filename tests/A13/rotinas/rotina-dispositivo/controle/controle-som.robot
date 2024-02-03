*** Settings ***

Documentation    Smart Controle Som
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Controle marca AOLIJIA

Rotina com Controle Som - Botões principais
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_som}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_volume-}    ${mudo}    ${tv_volume+}    ${parar}    ${play}    ${proximo2}    ${hdmi}    ${graves_pesados}    ${selecao_entrada}    ${fibra_otica}    ${reverberation}    ${coaxial}                
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Som Botôes principais
    Então salvo a rotina

Rotina com Controle Som - Ligar/Desligar
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_som}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Som Ligar/Desligar 
    Então salvo a rotina
