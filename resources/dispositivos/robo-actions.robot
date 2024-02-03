*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
######Sintaxe "DADO"
#Editar nome
Dado que clico no Smart Robô Aspirador Wi-Fi Laser
    Wait Until Element Is Visible    ${btn_home_local}    20   
    Run Keyword And Ignore Error    Click Element    ${device_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_robo_laser}

#Reverter nome
Dado que clico no Smart Robô Aspirador Wi-Fi Laser Teste QA
    Wait Until Element Is Visible    ${btn_home_local}    10  
    Run Keyword And Ignore Error    Click Element    ${device_edit_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_edit_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_edit_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_edit_robo_laser}
    Swipe    550    1361    517    434
    Run Keyword And Ignore Error    Click Element    ${device_edit_robo_laser}  

######Sintaxe "QUANDO"
#Editar nome
Quando edito o nome do Smart Robô Aspirador Wi-Fi Laser Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.widget.EditText
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Robô Aspirador WiFi Laser Teste QA                
    # Capture Page Screenshot 
    # Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.view.View

#Reverter nome
Quando edito o nome do Smart Robô Aspirador Wi-Fi Laser
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.widget.EditText
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Robô Aspirador WiFi Laser                
    # Capture Page Screenshot 
    # Click Element    xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.view.View


######Sintaxe "ENTAO"
#Editar nome
Então é validado que o nome foi alterado para Robô Aspirador Wi-Fi Laser Teste QA
    Wait Until Element Is Visible    ${device_edit_robo_laser}
    Capture Page Screenshot

#Reverter nome
Então é validado que o nome foi alterado para Robô Aspirador Wi-Fi Laser
    Wait Until Element Is Visible    ${device_robo_laser}
    Capture Page Screenshot    

