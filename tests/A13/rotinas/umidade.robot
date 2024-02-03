*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***
#Variaveis que armazenam as condições salvas, afim de validar se de fato a mesma foi salva na Rotina.
${cond1}    accessibility_id=Umidade do ar: Seco
${cond2}    accessibility_id=Umidade do ar: Confortável
${cond3}    accessibility_id=Umidade do ar: Úmido

*** Test Cases ***

Rotina Umidade Seco
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_umidade}    ${btn_seco}    ${btn_salvar}
    E salvo o nome da Rotina     Umidade Seco
    Então salvo a Rotina com sucesso    ${cond1}

Rotina Umidade Confortável
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_umidade}    ${btn_confortavel}   ${btn_salvar}
    E salvo o nome da Rotina     Umidade Confortável
    Então salvo a Rotina com sucesso    ${cond2}    

Rotina Umidade Úmido
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_umidade}    ${btn_umido}    ${btn_salvar}
    E salvo o nome da Rotina     Umidade Úmido
    Então salvo a Rotina com sucesso    ${cond3}