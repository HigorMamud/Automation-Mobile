*** Settings ***

Documentation     Perfil - Desabilitar/Habilitar notificações push
Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

Desabilitar Notificações Push
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_configuracoes_notificacao}
    Então alterno o recebimento de notificação push