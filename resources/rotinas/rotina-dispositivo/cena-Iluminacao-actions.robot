*** Settings ***

Resource                               ../../../resources/base.robot

*** Keywords ***
#SALVAR ROTINA
Então salvo a rotina
    Swipe                                483    1342    519    176
    Swipe                                483    1342    519    176 
    Swipe                                483    1342    519    176       
    Click Element                        ${btn_salvar}
    Capture Page Screenshot              2
    Run Keyword And Ignore Error         Click Element    accessibility_id=Entendido
    Capture Page Screenshot

Então salvo a rotina criada(TESTE SWIPE)
    [Arguments]    ${cood1}    ${cood2}    ${cood3}    ${cood4}
    Swipe    ${cood1}    ${cood2}    ${cood3}    ${cood4}
    Click Element                        ${btn_salvar}
    Capture Page Screenshot              2
    Run Keyword And Ignore Error         Click Element    accessibility_id=Entendido
    Capture Page Screenshot    

############################
E defino as opções de Iluminação
    [Arguments]    ${condicao}    ${ligar}    ${ativar}    ${brilho}    ${salva_brilho}    ${temperatura}    ${salva_temp}    ${modo}    ${selec_mod}    ${salva_mod}
    Wait Until Element Is Visible    ${ligar}    15
    Click Element    ${ligar}
    Wait Until Element Is Visible    ${ativar}    15
    Click Element    ${ativar}
    Click Element    ${brilho}
    # Click Element    ${niv_brilho}
    Swipe Rotina    ${condicao} 
    Click Element    ${salva_brilho}
    Click Element    ${temperatura}
    # Click Element    ${selec_temp}
    Swipe Rotina    ${condicao} 
    Click Element    ${salva_temp}
    Click Element    ${modo}
    Click Element    ${selec_mod}
    Click Element    ${salva_mod}
    Run Keyword And Ignore Error    Click Element    ${btn_salvar}
    Capture Page Screenshot

E defino as ações do Bocal
    [Arguments]    ${ligar}    ${led}    ${opt_led}    ${agend}    ${cond}    ${swipe1}    ${swipe2}    ${swipe3}    ${swipe4}    ${salvar}
    Wait Until Element Is Visible    ${ligar}
    Click Element    ${ligar}
    Click Element    ${led}
    Click Element    ${opt_led}
    Click Element    ${agend}
    Click Element    ${cond}
    Swipe    ${swipe1}    ${swipe2}    ${swipe3}    ${swipe4}
    Click Element    ${salvar}
    Click Element    ${btn_salvar}
    Capture Page Screenshot
