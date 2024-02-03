*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
#######DADO
#Editando nome
Dado que clico no dispositivo
    Wait Until Element Is Visible                    ${btn_home_local}    30
    [Arguments]    ${device}
    FOR  ${I}  IN RANGE    0    25
        ${element_init}    Run Keyword And Return Status
    ...    Element Should Be Visible    ${device}
    Run Keyword If    ${element_init}
    ...    Click Element    ${device}    
    ...    ELSE
    ...    Swipe    550    1361    517    434  
    Exit For Loop If    ${element_init}             
    END
    
#####E - (vale para ambas situações)
E clico na engrenagem
    Wait Until Element Is Visible                   ${btn_configuracoes}     30
    Click Element                                   ${btn_configuracoes} 

E clico na engrenagem - TUYA
    Wait Until Element Is Visible                   ${btn_config_PROVISORIO}     30
    Click Element                                   ${btn_config_PROVISORIO} 

E retorno para home do aplicativo
    Click Element                                   ${btn_voltar}    
    Click Element                                   ${btn_voltar}


#####QUANDO
#Editando nome

Quando altero o nome do dispositivo
    [Arguments]    ${textbox}    ${textbox_edit}    ${name}
    Click Text    ${textbox}
    Clear Text    ${textbox_edit}
    Input Text Into Current Element    ${name}                
    Capture Page Screenshot

Quando altero o nome da lâmpada para Smart Lâmpada WiFi RGB+ Teste QA
    Click Text    Smart Lâmpada WiFi RGB+
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi RGB+ Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}
    

Quando altero o nome da lâmpada para Smart Lâmpada WiFi Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Teste QA                
    # Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Smart Lâmpada WiFi Retrô Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Retrô Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando altero o nome da lâmpada para Smart Lâmpada WiFi Lite Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Lite Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Smart Luminaria de Mesa WiFi Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Luminária de Mesa WiFi Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}   

Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi de Embutir 3 Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Luminária Spot de Embutir Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}                

Quando altero o nome da lâmpada para Smart Lâmpada Wi-Fi Spot Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Spot Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando altero o nome da lâmpada para Smart Fita LED Multi Temperatura Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Fita LED Multi Temperatura Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}  

Quando altero o nome da lâmpada para Smart Fita LED RGB Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Fita LED RGB Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Smart Interruptor WiFi 2 Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Interruptor WiFi Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Painel LED Diana Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Painel LED WiFi Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}  

Quando altero o nome da lâmpada para Smart Bocal antigo Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Bocal WiFi Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}   

Quando altero o nome da lâmpada para Smart Bocal antigo
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Bocal WiFi                
    Capture Page Screenshot

Quando altero o nome para Smart Bocal antigo Teste QA
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Bocal WiFi Teste QA                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}                 

#Revertendo nome
Quando altero o nome da lâmpada para Smart Lâmpada WiFi RGB+
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi RGB+                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando altero o nome da lâmpada para Smart Lâmpada WiFi
    # Wait Until Element Is Visible                   ${btn_nome_dispositivo}    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element                 Smart Lâmpada WiFi                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Luminária de Mesa WiFi                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}


Quando altero o nome da lâmpada para Smart Lâmpada WiFi Retrô
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Retrô                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}    

Quando altero o nome da lâmpada para Smart Lâmpada WiFi Lite
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Lite                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

# Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi
#     # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
#     # Swipe    960    388    953    388
#     Click Element    ${btn_editar_nome}
#     Clear Text    class=android.widget.EditText
#     Input Text Into Current Element    Smart Luminária de Mesa WiFi                
#     Capture Page Screenshot 
#     # Click Element                                   ${btn_salvar}  

Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi de Embutir
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Luminária Spot de Embutir              
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}                  

Quando altero o nome da lâmpada para Smart Lâmpada Wi-Fi Spot
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Lâmpada WiFi Spot                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando altero o nome da lâmpada para Smart Fita LED Multi Temperatura
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Fita LED Multi Temperatura                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}  

Quando altero o nome da lâmpada para Smart Fita LED RGB
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Fita LED RGB                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Smart Interruptor WiFi 2
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Interruptor WiFi                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar} 

Quando altero o nome da lâmpada para Painel LED Diana
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Painel LED WiFi                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}  
 

Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi de Emb
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Luminária Spot Wi-Fi de Embutir 3                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}

Quando realizo a alteração o nome da lâmpada para Smart Bocal
    # Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Nome do dispositivo"]    15
    # Swipe    960    388    953    388     
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Bocal WiFi                
    Capture Page Screenshot 
    # Click Element                                   ${btn_salvar}    




#####ENTÃO
#Editando nome
Então é validado que o nome foi alterado para Smart Lâmpada WiFi RGB+ Teste QA   
    Wait Until Element Is Visible                   ${device_edit_lampada_rgb+}    30
    Capture Page Screenshot

Então é validado que o nome foi alterado para Smart Lâmpada WiFi Teste QA  
    Wait Until Element Is Visible                   ${device_edit_lampada_wifi}    30
    Capture Page Screenshot

Então é validado que o nome foi alterado para Smart Lâmpada WiFi Retrô Teste QA  
    Wait Until Element Is Visible                   ${device_edit_lampada_retro}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Lâmpada WiFi Lite Teste QA  
    Wait Until Element Is Visible                   ${device_edit_lampada_lite}    30
    Capture Page Screenshot   

Então é validado que o nome foi alterado para Smart Luminária de Mesa Wi-Fi Teste QA  
    Wait Until Element Is Visible                   ${device_edit_luminaria}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Luminária Spot Wi-Fi de Embutir 3 Teste QA  
    Wait Until Element Is Visible                   ${device_edit_spot_embutir}    30
    Capture Page Screenshot    

Então é validado que o nome foi alterado para Smart Lâmpada Wi-Fi Spot Teste QA  
    Wait Until Element Is Visible                   ${device_edit_spot}    30
    Capture Page Screenshot   

Então é validado que o nome foi alterado para Smart Fita LED Multi Temperatura Teste QA  
    Wait Until Element Is Visible                   ${device_edit_fita_multi}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Fita LED RGB Teste QA  
    Wait Until Element Is Visible                   ${device_edit_fita_rgb}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Interruptor WiFi 2 Teste QA  
    Wait Until Element Is Visible                   ${device_edit_interruptor}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Painel LED Diana Teste QA  
    Wait Until Element Is Visible                   ${device_edit_painel}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Bocal antigo Teste QA  
    Wait Until Element Is Visible                   ${device_edit_bocal}    30
    Capture Page Screenshot                       


#Revertendo nome
Então é validado que o nome foi alterado para Smart Lâmpada WiFi RGB+   
    Wait Until Element Is Visible                   ${device_lampada_rgb+}    30
    Capture Page Screenshot

Então é validado que o nome foi alterado para Smart Lâmpada WiFi  
    Wait Until Element Is Visible                   ${device_lampada_wifi}    30
    Capture Page Screenshot

Então é validado que o nome foi alterado para Smart Lâmpada WiFi Retrô  
    Wait Until Element Is Visible                   ${device_lampada_retro}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Lâmpada WiFi Lite  
    Wait Until Element Is Visible                   ${device_lampada_lite}    30
    Capture Page Screenshot   

Então é validado que o nome foi alterado para Smart Luminária de Mesa Wi-Fi  
    Wait Until Element Is Visible                   ${device_luminaria}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Luminária Spot Wi-Fi de Embutir 3  
    Wait Until Element Is Visible                   ${device_spot_embutir}    30
    Capture Page Screenshot    

Então é validado que o nome foi alterado para Smart Lâmpada Wi-Fi Spot  
    Wait Until Element Is Visible                   ${device_spot}    30
    Capture Page Screenshot   

Então é validado que o nome foi alterado para Smart Fita LED Multi Temperatura  
    Wait Until Element Is Visible                   ${device_fita_multi}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Fita LED RGB  
    Wait Until Element Is Visible                   ${device_fita_rgb}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Smart Interruptor WiFi 2  
    Wait Until Element Is Visible                   ${device_interruptor}    30
    Capture Page Screenshot  

Então é validado que o nome foi alterado para Painel LED Diana  
    Wait Until Element Is Visible                   ${device_painel}    30
    Capture Page Screenshot

Então é validado que o nome foi alterado para Smart Bocal antigo  
    Wait Until Element Is Visible                   ${device_bocal}    30
    Capture Page Screenshot

Quando executo as ações do dispositivo
    [Arguments]    ${opcao1}=    ${opcao2}=    ${opcao3}=
    Wait Until Element Is Visible       ${opcao1}    20 
    Click Element    ${opcao1}
    Wait Until Element Is Visible       ${opcao2}    20 
    Click Element    ${opcao2}
    Wait Until Element Is Visible       ${opcao3}    20 
    Click Element    ${opcao3}
    Capture Page Screenshot   


Quando executo as ações do dispositivo nas configurações
    [Arguments]    ${opcao1}    ${opcao2}    ${opcao3}    ${opcao4}    ${opcao5}    ${opcao6}    ${opcao7}    ${opcao8}    ${opcao9}    ${opcao10}    ${opcao11}    
    Wait Until Element Is Visible       ${opcao1}    20 
    Click Element    ${opcao1}
    Wait Until Element Is Visible       ${opcao2}    20 
    Click Element    ${opcao2}
    Swipe    ${opcao3}    ${opcao4}    ${opcao5}    ${opcao6}
    Wait Until Element Is Visible       ${opcao7}    20 
    Click Element    ${opcao7}
    Wait Until Element Is Visible      ${opcao8}    20
    Go Back
    Wait Until Element Is Visible      ${opcao9}    20
    Click Element                      ${opcao9}
    Wait Until Element Is Visible      ${opcao10}    20
    Click Element                      ${opcao10}
    Wait Until Element Is Visible      ${opcao11}    20 
    Click Element                      ${opcao11}
    Capture Page Screenshot    


Quando altero as configurações do dispositivo
    [Arguments]    ${opcao1}    ${opcao}    ${opcao}    ${opcao}    ${opcao}    ${opcao}    
