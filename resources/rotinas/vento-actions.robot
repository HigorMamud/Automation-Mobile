*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
E defino a velocidade do vento
    Swipe    567    1874    575    317
    [Arguments]    ${mudanca_clima}    ${vento}    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${swipe1_4}    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}    ${swipe2_4}    ${salvar}
    Wait Until Element Is Visible    ${mudanca_clima}    20
    Click Element    ${mudanca_clima}
    Sleep    2
    Wait Until Element Is Visible    ${vento}    15
    Click Element    ${vento}
    Swipe    ${swipe1_1}    ${swipe1_2}    ${swipe1_3}    ${swipe1_4}
    Swipe    ${swipe2_1}    ${swipe2_2}    ${swipe2_3}    ${swipe2_4}
    Click Element    ${salvar}
    Click Element    ${btn_salvar}

E defino a velocidade do vento para Vento menor que 2
    Swipe    567    1874    575    317
    Click Element    ${btn_mudanca_clima}
    Wait Until Element Is Visible    ${btn_vento}    15
    Click Element    ${btn_vento}
    Swipe    444    1851    433    2094     # Smartphone A23
    Swipe    663    1957    670    1685
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Wait Until Element Is Visible    ${btn_nova_rotina}    15
    Swipe    536    1869    529    766
#    Wait Until Element Is Visible    accessibility_id=Campo Comprido\nVelocidade do vento: < 2 m/s    15
    Click Element    ${btn_proximo}

E defino a velocidade do vento para igual 2
    Swipe    567    1874    575    317
    Click Element    ${btn_mudanca_clima}
    Wait Until Element Is Visible    ${btn_vento}    15
    Click Element    ${btn_vento}
    Swipe    663    1957    670    1685
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Wait Until Element Is Visible    ${btn_nova_rotina}    15
    Swipe    536    1869    529    766    
#    Wait Until Element Is Visible    accessibility_id=Campo Comprido\nVelocidade do vento: == 2 m/s    15
    Click Element    ${btn_proximo}

E defino a velocidade do vento para Vento igual a zero
    Swipe    567    1874    575    317
    Click Element    ${btn_mudanca_clima}
    Wait Until Element Is Visible    ${btn_vento}    15
    Click Element    ${btn_vento}
    Wait Until Element Is Visible    ${btn_salvar}    15
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Wait Until Element Is Visible    ${btn_nova_rotina}    15
#    Swipe    536    1869    529    766
#    Wait Until Element Is Visible    accessibility_id=Campo Comprido\nVelocidade do vento: == 0 m/s    15
    Click Element    ${btn_proximo}

E defino a velocidade do vento para Vento maior que 2
    Swipe    567    1874    575    317
    Click Element    ${btn_mudanca_clima}
    Wait Until Element Is Visible    ${btn_vento}    15
    Click Element    ${btn_vento}
    Swipe    406    1965    421    1731
    Swipe    663    1957    670    1685
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Wait Until Element Is Visible    ${btn_nova_rotina}    15
    Swipe    536    1869    529    766
#    Wait Until Element Is Visible    accessibility_id=Campo Comprido\nVelocidade do vento: > 2 m/s    15
    Click Element    ${btn_proximo}

E informo um nome em seguida seleciono a imagem - Vento menor que 2
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Vento menor que 2

    Click Element    ${btn_salvar}


E informo um nome em seguida seleciono a imagem - Vento igual a 2 
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Vento igual a 2
    Click Element    ${btn_salvar}    

E informo um nome em seguida seleciono a imagem - Vento igual a zero
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Vento igual a zero
    Click Element    ${btn_salvar}

E informo um nome em seguida seleciono a imagem - Vento maior que 2
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Vento maior que 2
    Click Element    ${btn_salvar}


Então salvo a Rotina - Vento menor que 2
    Swipe    571    1823    582    283
    Click Element    ${btn_salvar}
    # Wait Until Element Is Visible    ${img_rotina}    15
    # Click Element    ${img_rotina}
    # Input Text Into Current Element    Vento menor que 2
    # Wait Until Element Is Visible    accessibility_id=Vento menor que 2\nAutomação    15
    Capture Page Screenshot

Então salvo a Rotina - Vento igual a 2 
    Swipe    571    1823    582    283
    Click Element    ${btn_salvar}
    # Wait Until Element Is Visible    ${img_rotina}    15
    # Click Element    ${img_rotina}
    # Input Text Into Current Element    Vento Igual a 2
    # Wait Until Element Is Visible    accessibility_id=Vento \nAutomação    15        
    Capture Page Screenshot

Então salvo a Rotina - Vento igual a zero
    Swipe    571    1823    582    283
    Click Element    ${btn_salvar}
    # Wait Until Element Is Visible    ${img_rotina}    5
    # Click Element    ${img_rotina}
    # Input Text Into Current Element    Vento igual a zero
    # Wait Until Element Is Visible    accessibility_id=Vento igual a zero\nAutomação    15        
    Capture Page Screenshot    

Então salvo a Rotina - Vento maior que 2
    Swipe    571    1823    582    283
    Click Element    ${btn_salvar}
    # Wait Until Element Is Visible    ${img_rotina}    5
    # Click Element    ${img_rotina}
    # Input Text Into Current Element    Vento maior que 2
    # Wait Until Element Is Visible    accessibility_id=Vento maior que 2\nAutomação    15
    Capture Page Screenshot
