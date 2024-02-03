#Excluir todas as notificações da listagem

*** Settings ***

Documentation       Excluir Notificações
Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***

Excluir um grupo de Notificação de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    # FOR  ${counter}    IN RANGE    0    2
    Quando em notificação seleciono a opção        ${btn_alarme}     ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_notificacao}
    # Exit For Loop If    ${counter}==5
    # END
    Então notificação excluída com sucesso

Excluir uma Notificação de Atualização
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    Quando em notificação seleciono a opção    ${btn_atualizaçoes}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_notificacao}
    Então notificação excluída com sucesso

Excluir todas as Notificações de Alarme
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    # FOR  ${counter}    IN RANGE    0    5
    Quando em notificação seleciono a opção    ${btn_alarme}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    # Exit For Loop If    ${counter}==5
    # END
    Então notificação excluída com sucesso

Excluir todas as Notificações de Atualização
    Dado que clico na Guia    ${btn_perfil}    ${btn_notificações}
    # FOR  ${counter}    IN RANGE    0    2
    Quando em notificação seleciono a opção    ${btn_atualizaçoes}    ${btn_excluir_notificacoes}
    E excluo todas as notificações    ${btn_selecionar_todos}
    # Exit For Loop If    ${counter}==2
    # END
    Então notificação excluída com sucesso

