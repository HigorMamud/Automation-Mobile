*** Settings ***

Resource                               ../../resources/base.robot

*** Keywords ***

# Rotina com Nascer do sol ao amanhecer
E configuro Nascer do Sol
    Swipe    567    1874    575    317
    [Arguments]      ${mudanca_clima}    ${nascer_por}    ${nascer_opt}    ${swipe1_0}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${salvar}    
    Wait Until Element Is Visible    ${mudanca_clima}    20
    Click Element    ${mudanca_clima}
    Wait Until Element Is Visible    ${nascer_por}    20
    Click Element    ${nascer_por}
    Wait Until Element Is Visible    ${nascer_opt}    20
    Click Element    ${nascer_opt}
    Swipe            ${swipe1_0}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}
    Click Element    ${salvar}
    Click Element    ${btn_salvar}

    



E configuro Nascer do Sol ao amanhecer
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_nascer_sol}
    Click Element                        accessibility_id=Ao amanhecer
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Nascer do Sol ao amanhecer
    Wait Until Element Is Visible        ${btn_proximo}    20
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Nascer do sol ao amanhecer  
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

E defino o período ativo 24h - Dias uteis
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    20
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    20
    Swipe                                329    1266    334    2042

E defino o período ativo Do anoitecer ao amanhecer - Dias uteis
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    20
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Do anoitecer ao amanhecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    20
    Swipe                                329    1266    334    2042 

E defino o período ativo Do amanhecer ao anoitecer - Dias uteis
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    20
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Do amanhecer ao anoitecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    20
    Swipe                                329    1266    334    2042     

E defino o período ativo Personalizado - Dias uteis
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    20
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Personalizado
    ${time}    Get Current Date    result_format=%H:%M
    Click Element    xpath=(//android.view.View[@content-desc="${time}"])[2]
    Swipe    268    1957    272    1766
    Click Element    accessibility_id=Confirmar
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    20      

# Rotina após amanhecer

 E configuro 10min antes do amanhecer
    Swipe    567    1874    575    317  
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_nascer_sol}
    Swipe    551    1721    558    2030
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome 10min antes do amanhecer
    Sleep                                5
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      10min antes do amanhecer
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina 15min antes de amanhecer

E configuro 25min após amanhecer
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_nascer_sol}
    Swipe    562    1975    569    1341
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}
E salvo o nome 25min após amanhecer
    Sleep                                5
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      25min antes de amanhecer
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina Por do sol ao anoitecer

E configuro Por do Sol anoitecer 
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_por_sol}
    Click Element                        accessibility_id=Ao anoitecer
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}
E salvo o nome Por do Sol anoitecer
    Sleep                                5
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Por do sol ao anoitecer
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina Antes do por do sol

E configuro 10min antes do Por do Sol
    Swipe    567    1874    575    317 
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_por_sol}
    Swipe    547    1720    551    2008
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome 10min antes do Por do Sol
    Sleep                                5
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      10min antes do Por do Sol
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina Após o Por do sol

E configuro 15min após o Por do Sol
    Swipe    567    1874    575    317 
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_nascer_por}    20
    Click Element                        ${btn_nascer_por}
    Click Element                        ${btn_por_sol}
    Swipe    533    1979    566    1638
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome 15min após o por do sol
    Sleep                                5
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      15min após o por do sol
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}