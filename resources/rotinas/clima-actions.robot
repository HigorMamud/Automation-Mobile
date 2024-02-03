*** Settings ***

Resource                               ../../resources/base.robot


*** Variables ***



*** Keywords ***
E configuro o Clima
    Swipe    567    1874    575    317
    [Arguments]    ${mudanca_clima}    ${clima}    ${sel_clima}    ${salvar}
    Wait Until Element Is Visible    ${mudanca_clima}    15
    Click Element    ${mudanca_clima}
    Sleep    2
    Wait Until Element Is Visible    ${clima}
    Click Element    ${clima}
    Wait Until Element Is Visible    ${sel_clima}    15
    Click Element    ${sel_clima}    
    Click Element    ${salvar}
    Wait Until Element Is Visible    ${btn_salvar}    15
    Click Element    ${btn_salvar}


#Rotina Clima Nublado
E configuro Clima Nublado
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_clima}    15
    Click Element                        ${btn_clima}
    Click Element                        ${btn_nublado}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Clima Nublado
    Swipe    567    1874    575    317
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Clima Nublado 
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

#Rotina Clima Nevando
E configuro Clima Nevando
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_clima}    15
    Click Element                        ${btn_clima}
    Click Element                        ${btn_nevando}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Clima Nevando
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Clima Nevando 
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

#Rotina clima Poluído

E configuro Clima Poluído
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_clima}    15
    Click Element                        ${btn_clima}
    Click Element                        ${btn_poluido}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Clima Poluído
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Clima Poluído 
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina com condição Clima Céu aberto
E configuro Clima Céu Aberto
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_clima}    15
    Click Element                        ${btn_clima}
    Click Element                        ${btn_ceu_aberto}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Clima Céu Aberto
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Clima Céu Aberto   
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}

# Rotina Clima Chovendo
E configuro Clima Chovendo
    Swipe    567    1874    575    317
    Click Element                        ${btn_mudanca_clima}
    Wait Until Element Is Visible        ${btn_clima}    15
    Click Element                        ${btn_clima}
    Click Element                        ${btn_chovendo}
    Click Element                        ${btn_salvar}
    Click Element                        ${btn_salvar}

E salvo o nome Clima Chovendo
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    Input Text Into Current Element      Clima Chovendo 
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}


Então salvo a rotina Chovendo
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177        
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            15
    # Wait Until Element Is Visible      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]    15
    # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
    # Input Text Into Current Element    Chovendo
    # Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Chovendo\nCena"]
    # Capture Page Screenshot            15

Então salvo a rotina Céu aberto
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177        
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            15
    # Wait Until Element Is Visible      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]    15
    # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
    # Input Text Into Current Element    Céu aberto
    # Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Céu aberto\nCena"]
    # Capture Page Screenshot            15

Então salvo a rotina Poluído
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177       
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            15
    # Wait Until Element Is Visible      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]    15
    # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
    # Input Text Into Current Element    Poluído
    # Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Poluído\nCena"]
    # Capture Page Screenshot            15

Então salvo a rotina Nevando
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            15
    # Wait Until Element Is Visible      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]    15
    # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
    # Input Text Into Current Element    Nevando
    # Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Nevando\nCena"]
    # Capture Page Screenshot            15

Então salvo a rotina nublado
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177     
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            15
    # Wait Until Element Is Visible      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]    15
    # Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]
    # Input Text Into Current Element    Nublado
    # Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Nublado\nCena"]
    # Capture Page Screenshot            15