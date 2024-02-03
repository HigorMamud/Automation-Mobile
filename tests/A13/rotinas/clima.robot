*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***
#Variaveis que armazenam as condições salvas, afim de validar se de fato a mesma foi salva na Rotina.
${cond1}    accessibility_id=Clima: Ensolarado
${cond2}    accessibility_id=Clima: Nublado
${cond3}    accessibility_id=Clima: Chovendo
${cond4}    accessibility_id=Clima: Nevando
${cond5}    accessibility_id=Clima: Poluído

*** Test Cases ***
################CLIMA#########################
Rotina Clima Céu Aberto
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_clima}    ${btn_ceu_aberto}    ${btn_salvar}
    # E configuro Clima Céu Aberto    
    E salvo o nome da Rotina     Clima Céu Aberto
    Então salvo a Rotina com sucesso    ${cond1}
    
Rotina Clima Nublado
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_clima}    ${btn_nublado}    ${btn_salvar}
    E salvo o nome da Rotina     Clima Nublado
    Então salvo a Rotina com sucesso    ${cond2}

Rotina Clima Chovendo
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_clima}    ${btn_chovendo}    ${btn_salvar}
    E salvo o nome da Rotina     Clima Chovendo
    Então salvo a Rotina com sucesso    ${cond3}  


Rotina Clima Nevando
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_clima}    ${btn_nevando}    ${btn_salvar}
    E salvo o nome da Rotina     Clima Nevando
    Então salvo a Rotina com sucesso    ${cond4}  


Rotina Clima Poluído
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro o Clima    ${btn_mudanca_clima}    ${btn_clima}    ${btn_poluido}    ${btn_salvar}
    E salvo o nome da Rotina     Poluído
    Então salvo a Rotina com sucesso    ${cond5}
