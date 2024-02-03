*** Settings ***


Resource                               ../../../resources/base.robot


*** Keywords ***
E ligo e defino potência
    [Arguments]    ${ligar}    ${potencia}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${swipe1_4}    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}    ${swipe2_4}    ${salvar}
    Wait Until Element Is Visible    ${ligar}    15
    Click Element    ${ligar}
    Wait Until Element Is Visible    ${potencia}    15
    Click Element    ${potencia}
    Swipe    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${swipe1_4}
    Swipe    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}    ${swipe2_4}
    Click Element    ${salvar}
    Click Element    ${btn_salvar}

