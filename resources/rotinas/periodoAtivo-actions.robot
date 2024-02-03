*** Settings ***

Resource         ../../resources/base.robot

*** Keywords ***


E defino o período ativo 24h - Todos os dias
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    10
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    10

E defino o período ativo Do amanhecer ao anoitecer - Todos os dias
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    10
    Click Element    accessibility_id=Do amanhecer ao anoitecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    10  

E defino o período ativo Do anoitecer ao amanhecer - Todos os dias
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    10
    Click Element    accessibility_id=Do anoitecer ao amanhecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    10  

E defino o período ativo Personalizado - Todos os dias
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    10
    Click Element    accessibility_id=Personalizado
    ${time}    Get Current Date    result_format=%H:%M
    Click Element    xpath=(//android.view.View[@content-desc="${time}"])[2]
    Swipe    268    1957    272    1766
    Click Element    ${btn_confirmar}
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    10       

    E defino o período ativo 24h - Seg Qua Sex
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    5
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[3]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[5]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    5
    Swipe                                329    1266    334    1042

E defino o período ativo Do anoitecer ao amanhecer - Seg Qua Sex
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    5
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[3]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[5]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Do anoitecer ao amanhecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    5
    Swipe                                329    1266    334    1042

E defino o período ativo Do amanhecer ao anoitecer - Seg Qua Sex
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    5
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[3]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[5]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Do amanhecer ao anoitecer
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    5
    Swipe                                329    1266    334    1042 

E defino o período ativo Personalizado - Seg Qua Sex
    Swipe    571    1823    582    283 
    Click Element    ${btn_periodo_ativo}
    Wait Until Element Is Visible    ${btn_periodo_ativo}    5
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[1]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[3]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[5]
    Click Element    xpath=//android.view.View[@content-desc="Quando a automação estará ativa:\nDom\nSeg\nTer\nQua\nQui\nSex\nSab\nE em quais horários a automação estará ativa"]/android.widget.CheckBox[7]
    Click Element    accessibility_id=Personalizado
    ${time}    Get Current Date    result_format=%H:%M
    Click Element    xpath=(//android.view.View[@content-desc="${time}"])[2]
    Swipe    268    1957    272    1766
    Click Element    ${btn_confirmar}
    Click Element    ${btn_salvar}
    Click Element    ${btn_entendido}
    Wait Until Element Is Visible    accessibility_id=Automações    5           
