*** Settings ***


Resource                               ../../../resources/base.robot


*** Keywords ***
E defino as tarefas da fechadura - 15s
    [Arguments]    ${tranManual}    ${trancAuto}
    Wait Until Element Is Visible    ${tranManual}    15
    Click Element    ${tranManual}
    Click Element    ${trancAuto}
    Click Element    accessibility_id=3%
    Click Element    ${btn_salvar}
    Click Element    ${btn_selecionar_modo}
    Swipe    524    2011    544    1522
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}

E defino as tarefas da fechadura
    [Arguments]    ${tranManual}    ${trancAuto}
    Wait Until Element Is Visible    ${tranManual}    15
    Click Element    ${tranManual}
    Click Element    ${trancAuto}
    Click Element    ${btn_selecionar_modo}
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}

E defino as tarefas da fechadura - 0s
    [Arguments]    ${tranManual}    ${trancAuto}
    Wait Until Element Is Visible    ${tranManual}    15
    Click Element    ${tranManual}
    Click Element    ${trancAuto}
    Click Element    ${btn_salvar}
    Click Element    ${btn_selecionar_modo}
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}  


