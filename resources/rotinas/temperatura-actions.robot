*** Settings ***

Resource                               ../../resources/base.robot

 
*** Keywords ***

#Rotina Mudança de clima temperatura igual a zero
E configuro temperatura
    Swipe    567    1874    575    317
    [Arguments]      ${mudanca_clima}    ${temperatura}    ${swipe1_0}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${swipe2_0}    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}    ${salvar}
    Click Element    ${mudanca_clima}
    Click Element    ${temperatura}    
    Swipe            ${swipe1_0}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}
    Swipe            ${swipe2_0}    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}
    Click Element    ${salvar}
    Click Element    ${btn_salvar}
    