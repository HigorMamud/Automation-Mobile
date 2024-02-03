*** Settings ***

Resource            ../resources/base.robot

*** Keywords ***
Dado que estou logado no Aplicativo
    Click Element                      ${btn_login}
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
    Input Text                         ${textbox_email}    softwarecasapositivo@gmail.com
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]
    Input Value                        ${textbox_password}    Positivo123
    ${btn_enter}                       Set Variable        xpath=//android.widget.Button[@content-desc="Entrar"]
    Click Element                      ${btn_enter}
    Wait Until Element Is Visible      accessibility_id=CLIQUE AQUI PARA ADICIONAR UM DISPOSITIVO INTELIGENTE    35
    Click Element                      ${btn_jump}    


Quando clico no botão Temperatura
    Sleep    10
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Temperatura: 21°C"]    10
    Click Element    xpath=//android.widget.ImageView[@content-desc="Temperatura: 21°C"]
    Capture Page Screenshot    10

Então as informações são exibidas
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Temperatura: 21°C${\n}Umidade do ar: 88.0%${\n}Pressão do ar: : 913.7hPa${\n}Velocidade do vento: : 1.0m/s${\n}PM2.5 ao ar livre: Excelente"]    10
