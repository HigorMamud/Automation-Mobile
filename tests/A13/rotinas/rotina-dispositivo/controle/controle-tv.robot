*** Settings ***

Documentation    Smart Controle Universal TV
Resource            ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

#Controle TV Samsung

Rotina com Controle TV - Botões principais
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tv}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_direita}    ${tv_direita}    ${tv_ok}    ${tv_canal-}    ${tv_volume-}    ${tv_mutar}    ${tv_home}    ${tv_baixo}    ${tv_volume+}     ${tv_canal+}    ${tv_cima}    ${tv_baixo}     
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    TV Botôes principais
    Então salvo a rotina

Rotina com Controle TV - Ligar/Desligar
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tv}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    Ligar/Desligar TV
    Então salvo a rotina

Rotina com Controle TV - Entrar Netflix
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tv}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_direita}    ${tv_direita}    ${tv_ok}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao}    ${ignora_botao} 
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    TV entrar netflix
    Então salvo a rotina

Rotina com Controle TV - trocar canal e auemntar volume
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria        ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_tv}
    E entro na funções do controle
    E seleciono os botões do controle     ${tv_OnOff}    ${tv_canal+}    ${tv_canal+}    ${tv_canal+}    ${tv_volume-}    ${tv_volume-}    ${tv_volume-}    ${tv_volume-}    ${tv_canal-}    ${tv_canal-}    ${tv_canal-}    ${tv_volume+}    ${tv_volume+}
    E seleciono o intervalo de 5s
    E salvo a lista de funções e intervalos
    E salvo o nome da Rotina    TV trocar canal e aumentar volume
    Então salvo a rotina