*** Settings ***

Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Variables ***
#Variavel que armazena a condição salva, afim de validar se de fato a mesma foi salva na Rotina.
${cond1}    accessibility_id=Localização: Local atual

*** Test Cases ***
Rotina Chegada
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro condição    ${btn_chegada_saida}    ${btn_chegar}    ${btn_descricao}    Local atual    ${btn_selecione_local}    ${btn_confirmar_endereco}
    E salvo o nome da Rotina     Chegada
    Então salvo a Rotina com sucesso    ${cond1}

Rotina Saida
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    Quando clico em receber uma notificação
    E configuro condição    ${btn_chegada_saida}    ${btn_sair}    ${btn_descricao}    Local atual    ${btn_selecione_local}    ${btn_confirmar_endereco}
    E salvo o nome da Rotina     Saída
    Então salvo a Rotina com sucesso    ${cond1}
