*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***
#Variaveis que armazenam as condições salvar, afim de validar se de fato a mesma foi salva na Rotina.
${cond1}    accessibility_id=Velocidade do vento: < 2 m/s
${cond2}    accessibility_id=Velocidade do vento: = 0 m/s
${cond3}    accessibility_id=Velocidade do vento: = 2 m/s
${cond4}    accessibility_id=Velocidade do vento: > 2 m/s

*** Test Cases ***

Rotina velocidade do vento - Menor que 2
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E defino a velocidade do vento    ${btn_mudanca_clima}    ${btn_vento}    444    1851    433    2094    663    1957    670    1685    ${btn_salvar}
    E salvo o nome da Rotina    Vento menor que 2
#    E defino o período ativo 24h - Todos os dias
    Então salvo a Rotina com sucesso    ${cond1}

Rotina velocidade do vento - Igual a zero
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E defino a velocidade do vento    ${btn_mudanca_clima}    ${btn_vento}    0    0    0    0    0    0    0    0    ${btn_salvar}
    E salvo o nome da Rotina    Vento igual a zero
#    E defino o período ativo Do amanhecer ao anoitecer - Todos os dias
    Então salvo a Rotina com sucesso    ${cond2}

Rotina velocidade do vento - Igual a 2
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E defino a velocidade do vento    ${btn_mudanca_clima}    ${btn_vento}    0    0    0    0    663    1957    670    1685    ${btn_salvar}
    E salvo o nome da Rotina    Vento igual a 2 
#    E defino o período ativo Do anoitecer ao amanhecer - Todos os dias
    Então salvo a Rotina com sucesso    ${cond3}

Rotina velocidade do vento - Maior que 2
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E defino a velocidade do vento    ${btn_mudanca_clima}    ${btn_vento}    406    1965    421    1731    663    1957    670    1685    ${btn_salvar}
    E salvo o nome da Rotina    Vento maior que 2
#    E defino o período ativo Personalizado - Todos os dias
    Então salvo a Rotina com sucesso    ${cond4}        