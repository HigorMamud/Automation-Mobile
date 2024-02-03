*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***
#Variaveis que armazenam as condições salvar, afim de validar se de fato a mesma foi salva na Rotina.
${cond1}    accessibility_id=Nascer ou pôr do sol: Nascer do Sol
${cond2}    accessibility_id=Nascer ou pôr do sol: 25 minutos após amanhecer
${cond3}    accessibility_id=Nascer ou pôr do sol: 10 minutos antes de amanhecer
${cond4}    accessibility_id=Nascer ou pôr do sol: Pôr do Sol
${cond5}    accessibility_id=Nascer ou pôr do sol: 10 minutos antes de anoitecer
${cond6}    accessibility_id=Nascer ou pôr do sol: 15 minutos após anoitecer

*** Test Cases ***
###########NASCER-POR-DO-SOL###################  
Rotina Clima Nascer do Sol amanhecer
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_nascer_sol}    0    0    0    0    ${btn_salvar}
    E salvo o nome da Rotina    Nascer do sol ao amanhecer
#    E defino o período ativo 24h - Dias uteis
    Então salvo a Rotina com sucesso    ${cond1}


Rotina Clima Nascer do Sol 25min após
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_nascer_sol}    562    1975    569    1341    ${btn_salvar}
    E salvo o nome da Rotina    25min após amanhecer
#    E defino o período ativo Do anoitecer ao amanhecer - Dias uteis
    Então salvo a Rotina com sucesso    ${cond2}

Rotina Clima Nascer do Sol 10min antes
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_nascer_sol}    548    1721    556    1959    ${btn_salvar}   
    E salvo o nome da Rotina    10min antes do amanhecer
#    E defino o período ativo Do amanhecer ao anoitecer - Dias uteis
    Então salvo a Rotina com sucesso    ${cond3}

Rotina Clima Por do Sol anoitecer
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_por_sol}    0    0    0    0    ${btn_salvar}    
    E salvo o nome da Rotina    Por do sol ao anoitecer
#    E defino o período ativo Personalizado - Dias uteis
    Então salvo a Rotina com sucesso    ${cond4}

Rotina Clima Por do Sol 10min antes
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_por_sol}    548    1721    556    1959    ${btn_salvar} 
    E salvo o nome da Rotina    10min antes do Por do Sol
    Então salvo a Rotina com sucesso    ${cond5}

Rotina Clima Por do Sol 15min depois
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro Nascer do Sol    ${btn_mudanca_clima}    ${btn_nascer_por}    ${btn_por_sol}    536    1975    544    1592    ${btn_salvar} 
    E salvo o nome da Rotina    15min após o por do sol
    Então salvo a Rotina com sucesso    ${cond6}
