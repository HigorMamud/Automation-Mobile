*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
#####Sintaxe "DADO"
#Clicar no dispositivo
Dado que clico no PLUG Max
    Wait Until Element Is Visible    ${btn_home_local}    30
    Run Keyword And Ignore Error    Click Element    ${device_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_plug}


#Reverter nome
Dado que clico no PLUG Max Teste QA
    Wait Until Element Is Visible    ${btn_home_local}    10
    Run Keyword And Ignore Error    Click Element    ${device_edit_plug}
    Swipe    532    2074    528    67 
    Run Keyword And Ignore Error    Click Element    ${device_edit_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_edit_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_edit_plug}
    Swipe    532    2074    528    67
    Run Keyword And Ignore Error    Click Element    ${device_edit_plug}

######Sintaxe "QUANDO"
#Editar nome
Quando altero o nome Smart Plug Wi-Fi Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Plug WiFi Teste QA                
    # Capture Page Screenshot 
    # Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.view.View

#Reverter nome
Quando altero o nome Smart Plug Wi-Fi
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Plug WiFi                
    # Capture Page Screenshot 
    # Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.view.View



######Sintaxe "ENTÃO"
#Editar nome
Então é validado que o nome foi alterado para Smart Plug Wi-Fi Teste QA
    Wait Until Element Is Visible    ${device_edit_plug}   10
    Capture Page Screenshot    

#Reverter nome
Então é validado que o nome foi alterado para Smart Plug Wi-Fi
    Wait Until Element Is Visible    ${device_plug}   10
    Capture Page Screenshot      
