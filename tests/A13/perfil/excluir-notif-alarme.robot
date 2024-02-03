*** Settings ***

Documentation       Perfil - Excluir todas as notificações de alarme
Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Excluir todas as Notificações de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    Quando em notificação seleciono a opção    ${btn_alarme}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    Então notificação excluída com sucesso