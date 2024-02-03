*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Desconectar Google Assistente
    Dado que clico na Guia    ${btn_perfil}    ${btn_conexões_assistentes}
    Quando clico para desconectar o assistente    ${btn_desconect_assist}
    E saio do assitente
    Então Assistente é desconectado    ${conect_google}

Desconectar Assistente Alexa
    Dado que clico na Guia    ${btn_perfil}    ${btn_conexões_assistentes}
    Quando clico para desconectar o assistente    ${btn_desconect_assist}
    Então Assistente é desconectado    ${conect_alexa}
