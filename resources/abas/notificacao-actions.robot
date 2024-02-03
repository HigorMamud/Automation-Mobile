*** Settings ***


Resource          ../../resources/base.robot
        

*** Keywords ***

Quando em notificação seleciono a opção
    [Arguments]    ${opcoes_notificacao1}      ${opcoes_notificacao2}
    Wait Until Element Is Visible    ${opcoes_notificacao1}    15
    Click Element                    ${opcoes_notificacao1}
    Wait Until Element Is Visible    ${opcoes_notificacao2}    15
    Click Element                    ${opcoes_notificacao2}
    Capture Page Screenshot

E excluo todas as notificações
    [Arguments]    ${selecionar_notificacao}
    Wait Until Element Is Visible    ${selecionar_notificacao}   15
    Click Element                    ${selecionar_notificacao}
    Click Element                    ${btn_salvar}
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Click Element                    ${btn_confirmar}
    Capture Page Screenshot

Então notificação excluída com sucesso
    Wait Until Element Is Visible    ${toast_sucesso}    15
	Capture Page Screenshot

