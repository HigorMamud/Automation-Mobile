*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***

Quando executo ações no dispositivo
    [Arguments]    ${condicao}    ${opcao1}    ${opcao2}    ${opcao3}
    Wait Until Element Is Visible       ${opcao1}    20 
    Click Element    ${opcao1}
    Swipe Brilho Modo Branco    ${condicao}
    Wait Until Element Is Visible       ${opcao2}    20 
    Click Element    ${opcao2}
    Wait Until Element Is Visible       ${opcao3}    20 
    Click Element    ${opcao3}
    Capture Page Screenshot


E recebo Notificação de execução
    [Arguments]    ${opcao_notif1}    ${opcao_notif2}    ${opcao_notif3} 
    Click Element                    ${opcao_notif1}
    Swipe    517    434    550    1361
    Wait Until Element Is Visible    ${opcao_notif2}    20
    Click Element                    ${opcao_notif2}
    Wait Until Element Is Visible    ${opcao_notif3}    20
    Click Element                    ${opcao_notif3}
    Capture Page Screenshot

Então recebo notificação push
    [Arguments]    ${texto1}
    Wait Until Element Is Visible    ${btn_alarme}    20
    Run Keyword And Ignore Error    Wait Until Page Contains    text=${texto1}    timeout=20  
    Swipe    517    434    550    1361  
    Wait Until Page Contains    text=${texto1}    timeout=20
    Capture Page Screenshot


Então alterno o recebimento de notificação push
    Wait Until Element Is Visible    ${btn_notificacao_push}    20
    Click Element    ${btn_notificacao_push}
    Capture Page Screenshot
    
E volto para tela do dispositivo
    Wait Until Element Is Visible    ${btn_voltar}    10
    Click Element    ${btn_voltar}
    Wait Until Element Is Visible    ${btn_voltar}    10
    Click Element    ${btn_voltar}
    Capture Page Screenshot