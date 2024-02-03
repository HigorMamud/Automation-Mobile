*** Settings ***


Resource            ../../resources/base.robot

*** Keywords ***
#Sintaxe "E"
E adiciono o controle
    [Arguments]    ${add_control}    ${title}    ${device}    ${textbox}    ${name_device}    ${modelo}    
    Wait Until Element Is Visible    ${add_control}    15
    Click Element    ${add_control}
    Wait Until Element Is Visible    ${title}     15
    Wait Until Element Is Visible    ${device}    15
    Click Element    ${device}
    Wait Until Element Is Visible    ${textbox}
    Click Element   ${textbox}    
    Input Text Into Current Element    ${name_device}
    Wait Until Element Is Visible    ${modelo}    15
    Click Element    ${modelo}

Quando valido os elementos dos botões do controleR
    [Arguments]    ${home}    ${on_off}    ${menu_controle}    ${mudo}    ${c_mais}    ${c_menos}    ${v_mais}    ${v_menos}    
    ...    ${volt_control}    ${cima_tv}    ${baixa_tv}    ${esquerda}    ${direita}    ${ok}
    Wait Until Element Is Visible    ${home}     15
    Wait Until Element Is Visible    ${on_off}    15
    Wait Until Element Is Visible    ${menu_controle}        15
    Wait Until Element Is Visible    ${mudo}        15
    Wait Until Element Is Visible    ${c_mais}   15  
    Wait Until Element Is Visible    ${c_menos}    15
    Wait Until Element Is Visible    ${v_mais}    15
    Wait Until Element Is Visible    ${v_menos}    15
    Wait Until Element Is Visible    ${volt_control}    15
    Wait Until Element Is Visible    ${cima_tv}    15
    Wait Until Element Is Visible    ${baixa_tv}    15
    Wait Until Element Is Visible    ${esquerda}    15
    Wait Until Element Is Visible    ${direita}    15
    Wait Until Element Is Visible    ${ok}    15

E salvo a criação do controle 
    [Arguments]    ${device}
    # Wait Until Element Is Visible    ${btn_proximo}    15
    # Click Element                    ${btn_proximo}
    Wait Until Element Is Visible    ${btn_escolher}    15
    Click Element                    ${btn_escolher}
    Wait Until Element Is Visible    ${device}    30
    

Dado que o Smart Controle Universal esta disponivel
    Wait Until Element Is Visible    ${device_controle}    20
    Click Element                    ${device_controle}



Então excluo o mesmo em seguida
    Wait Until Element Is Visible    ${device_control_tv}    15
    Click Element                    ${device_control_tv}
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView    30
    Wait Until Element Is Visible    ${exclui_controle}    30
    Click Element                    ${exclui_controle}
    Wait Until Element Is Visible    ${title_control_tuya}    30
    Wait Until Element Is Visible    id=com.positivo.casainteligente:id/tv_tip    30
    Wait Until Element Is Visible    id=com.positivo.casainteligente:id/tv_confirm    30
    Click Element                    id=com.positivo.casainteligente:id/tv_confirm
    Wait Until Element Is Visible                    ${btn_home_local}    30


Então a tela do controle é exibida
#    Page Should Contain Text                         Smart Controle Universal    10
#    Page Should Contain Text                         Adicionar controle remoto   10
    Wait Until Element Is Visible                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.widget.TextView    20
    Click Element                                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView
    Capture Page Screenshot
    Wait Until Element Is Visible                    ${device_controle}    10
    
Clicar no botão próximo
    Wait Until Element Is Visible    ${btn_proximo}    30
    Click Element                    ${btn_proximo}
    Capture Page Screenshot
   