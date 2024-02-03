*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina Mudança de clima temperatura igual a zero
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro temperatura    ${btn_mudanca_clima}    ${btn_temperatura}    0    0    0    0    0    0    0    0    ${btn_salvar}    
    E salvo o nome da Rotina    Temperatura igual a zero    
#    E defino o período ativo 24h - Seg Qua Sex
    Então salvo a Rotina chegada ou saída

Rotina Temperatura igual a 15
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro temperatura    ${btn_mudanca_clima}    ${btn_temperatura}    0    0    0    0    670    1964    715    330    ${btn_salvar}
    E salvo o nome da Rotina    Temperatura igual a 15
#    E defino o período ativo Do anoitecer ao amanhecer - Seg Qua Sex
    Então salvo a Rotina chegada ou saída

    
Rotina Temperatura menor 36
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro temperatura    ${btn_mudanca_clima}    ${btn_temperatura}    444    1851    433    2094    677    1976    712    -1600    ${btn_salvar}
    E salvo o nome da Rotina    Temperatura menor 36
#    E defino o período ativo Do amanhecer ao anoitecer - Seg Qua Sex
    Então salvo a Rotina chegada ou saída


Rotina Temperatura maior que Zero
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro temperatura    ${btn_mudanca_clima}    ${btn_temperatura}    417    1957    413    1725    0    0    0    0    ${btn_salvar}    
    E salvo o nome da Rotina    Temperatura maior que zero
#    E defino o período ativo Personalizado - Seg Qua Sex
    Então salvo a Rotina chegada ou saída