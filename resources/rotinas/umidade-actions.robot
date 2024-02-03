*** Settings ***

Resource              ../../resources/base.robot

*** Keywords ***


E configuro Umidade Seco
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_umidade}    20      
    Click Element                        ${btn_umidade}
    Wait Until Element Is Visible        ${btn_seco}    20
    Click Element                        ${btn_seco}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Umidade Seco
    Wait Until Element Is Visible        ${btn_proximo}    20
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Umidade Seco    
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

E configuro Umidade Confortável
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_umidade}    20 
    Click Element                        ${btn_umidade}
    Wait Until Element Is Visible        ${btn_confortavel}    20
    Click Element                        ${btn_confortavel}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Umidade Confortável
    Wait Until Element Is Visible       ${btn_proximo}    20
    Click Element                       ${btn_proximo}
    Click Element                       ${textbox_nome_rotina}
    Input Text Into Current Element     Umidade Confortável    
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}
  
E configuro Umidade Úmido
    Swipe    567    1874    575    317
    Click Element                       ${btn_mudanca_clima}
    Wait Until Element Is Visible       ${btn_umidade}    20 
    Click Element                       ${btn_umidade}
    Wait Until Element Is Visible       ${btn_umido}    20
    Click Element                       ${btn_umido}
    Click Element                       ${btn_salvar}
    Click Element                       ${btn_salvar}

E salvo o nome Umidade Úmido
    Wait Until Element Is Visible       ${btn_proximo}    20
    Click Element                       ${btn_proximo}
    Click Element                       ${textbox_nome_rotina}
    Input Text Into Current Element     Umidade Úmido        
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

