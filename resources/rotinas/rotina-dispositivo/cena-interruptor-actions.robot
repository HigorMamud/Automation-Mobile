*** Settings ***

Resource                               ../../../resources/base.robot

*** Variables ***



*** Keywords ***
E defino as ações do Interruptor
    [Arguments]    ${c1}    ${swipec1_x1}    ${swipec1_y1}    ${swipec1_x2}    ${swipec1_y2}    ${salva_c1}    ${c2}    ${swipec2_x1}    ${swipec2_y1}    ${swipec2_x2}    ${swipec2_y2}    ${salva_c2}    ${c3}    ${swipec3_x1}    ${swipec3_y1}    ${swipec3_x2}    ${swipec3_y2}    ${salva_c3}
    Wait Until Element Is Visible    ${c1}    15
    Click Element    ${c1}
    Wait Until Element Is Visible    ${salva_c1}    15
    Swipe    ${swipec1_x1}    ${swipec1_y1}    ${swipec1_x2}    ${swipec1_y2}
    Click Element    ${salva_c1}
    Click Element    ${c2}
    Wait Until Element Is Visible    ${salva_c2}    15
    Swipe    ${swipec2_x1}    ${swipec2_y1}    ${swipec2_x2}    ${swipec2_y2}
    Click Element    ${salva_c2}
    Click Element    ${c3}
    Wait Until Element Is Visible    ${salva_c3}    15
    Swipe    ${swipec3_x1}    ${swipec3_y1}    ${swipec3_x2}    ${swipec3_y2}
    Click Element    ${salva_c3}
    Click Element    ${btn_salvar}
      
    