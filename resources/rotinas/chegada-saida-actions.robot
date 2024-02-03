*** Settings ***

Resource                               ../../resources/base.robot


*** Variables ***



*** Keywords ***
E configuro condição
    Swipe                              551    991    571    -2000
    [Arguments]    ${chegada_saida}    ${chegar}    ${textbox}    ${descricao}    ${local}    ${confirmar}
    Click Element    ${chegada_saida}    
    Wait Until Element Is Visible    ${chegar}    15
    Click Element    ${chegar}
    Click Element    ${textbox}
    Input Text Into Current Element    ${descricao}
    Wait Until Element Is Visible      ${local}    15
    Click Element                      ${local}
    Sleep    5
    Wait Until Element Is Visible      ${confirmar}    15
    Click Element                      ${confirmar}
    Hide Keyboard
    Click Element                      ${btn_salvar}


E configuro condição Chegada
    Click Element                    ${btn_chegada_saida}
    Wait Until Element Is Visible    ${btn_chegar}    20
    Click Element                    ${btn_chegar}

E configuro condição Saida
    Click Element                    ${btn_chegada_saida}
    Wait Until Element Is Visible    ${btn_chegar}    20
    Click Element                    ${btn_sair}

E salvo nome e local
    Click Element                     ${btn_descricao}
    Input Text Into Current Element    Local atual                                         
    Click Element                    ${btn_selecione_local}
    Wait Until Element Is Visible    ${btn_confirmar_endereco}    20
    Sleep                            10
    Click Element                    ${btn_confirmar_endereco}
    Hide Keyboard    
    Wait Until Element Is Visible    ${btn_salvar}    20                        
    Click Element                    ${btn_salvar}   

E salvo nome Chegada
    Wait Until Element Is Visible      ${btn_proximo}    20
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina} 
    Input Text Into Current Element    Chegada
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}

E salvo nome Saída
    Wait Until Element Is Visible      ${btn_proximo}    20
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina} 
    Input Text Into Current Element    Saida
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}