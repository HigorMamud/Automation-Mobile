
*** Settings ***

Documentation    Arquivo principal do projeto contendo as capabilities utilizadas no Appium 

Library     Screenshot
Library     DateTime
Library     AppiumLibrary

Resource    ../resources/login-actions.robot
Resource    ../resources/abas/loja-actions.robot
Resource    ../resources/abas/perfil-actions.robot
Resource    ../resources/dispositivos/camera-actions.robot
Resource    ../resources/dispositivos/controle-actions.robot
Resource    ../resources/dispositivos/fita-actions.robot
Resource    ../resources/dispositivos/lampada-actions.robot
Resource    ../resources/dispositivos/plug-actions.robot
Resource    ../resources/dispositivos/robo-actions.robot
Resource    ../resources/local/local-actions.robot
Resource    ../resources/rotinas/chegada-saida-actions.robot
Resource    ../resources/rotinas/clima-actions.robot
Resource    ../resources/rotinas/excluirRotina-action.robot
Resource    ../resources/rotinas/nascer_por-actions.robot
Resource    ../resources/rotinas/periodoAtivo-actions.robot
Resource    ../resources/rotinas/rotina-actions.robot
Resource    ../resources/rotinas/umidade-actions.robot
Resource    ../resources/rotinas/vento-actions.robot
Resource    ../resources/rotinas/temperatura-actions.robot
Resource    ../resources/agenda-actions.robot
Resource    ../resources/abas/notificacao-actions.robot
Resource    ../resources/temp-actions.robot
Resource    ../resources/variaveis/base-variaveis.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-Iluminacao-actions.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-camera-actions.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-plug-actions.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-fechadura-actions.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-controle-actions.robot
Resource    ../resources/rotinas/rotina-dispositivo/cena-interruptor-actions.robot
Resource    ../resources/efeito-editar.robot
Resource    ../resources/dispositivos/sanity-actions.robot
Resource    ../resources/functions.robot
Resource    ../resources/swipe_vertical.robot
Resource    ../resources/variaveis/devices-variaveis.robot
Resource    ../resources/variaveis/rotinas-variaveis.robot
Resource    ../resources/variaveis/agenda-variaveis.robot
Resource    ../resources/variaveis/perfil-variaveis.robot
Resource    ../resources/variaveis/locais-variaveis.robot
Resource    ../resources/variaveis/agenda-variaveis.robot
Resource    ../resources/variaveis/perfil-variaveis.robot
Resource    ../resources/variaveis/locais-variaveis.robot
Resource    ../resources/rotinas/rotina-testar-config-actions.robot


*** Variables ***

 
*** Keywords ***
###################DISPOSITIVOS##############################

Abrindo aplicativo A8    
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android8
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk  
    ...    udid=ce071607c0265a0c01    # Samsung Galaxy S7 - Diana
    # ...    app=C:\\positivo.apk
    # ...    udid=4A1234526     # Android 8.1 S533 - Alessandra
    ...    noReset=true



Abrindo aplicativo A9    
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android9
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk    
    ...    udid=0036319132    # Moto Z2 Play - Diana
    # ...    app=C:\\positivo.apk
    # ...    udid=68454174631102     # Android 9 S545 - Alessandra  
    ...    noReset=true

  

Abrindo aplicativo A10    
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android10
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk   
    ...    udid=GILI0140003D    # Q20 - Diana
    # ...    app=C:\\positivo.apk
    # ...    udid=P20052200026     # Android 10 Q20 - Alessandra
    ...    noReset=true

   

Abrindo aplicativo A11    
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android11
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk  
    ...    udid=ZF523FQ8BL     # Moto G10 - Diana
    # ...    app=C:\\positivo.apk
    # ...    udid=07634371BC000010     # Android 11 Infinix - Alessandra
    ...    noReset=true
   

Abrindo aplicativo A12    
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android12
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk  
    ...    udid=0884237277000371    # Infinix x665E - Diana
    ...    noReset=true



Abrindo aplicativo A13
    Open Application                 http://localhost:4723/wd/hub
    ...    automationName=UiAutomator2
    ...    platformName=Android
    ...    deviceName=Android13
    # ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk  
    # ...    udid=RX8N806X4LZ    # Samsung A71 - Diana
    ...    app=C:\\Users\\56429\\PROJETO\\Projeto em andamento\\app.apk  
    ...    udid=RX8T30CKJ8W    # Samsung A23 - Diana
    # ...    app=C:\\app.apk
    # ...    udid=099344035X014412     
    # ...    udid=RQ8TC00WJ9A    # Samsung A23 - Higor   
    # ...   app=C:\\Program Files\\app\\app.apk
    # ...   udid=RX8NC048ZYA    #Samsung A71 - Sarah
    # ...    app=C:\\positivo.apk   
    # ...    udid=RQ8T70194KR    # Samsung A13 - Alessandra
    ...    noReset=true
    ...    autoGrantPermissions=true
    
    Capture Page Screenshot    2




Fechar Aplicativo
    Close All Applications

Logar Aplicativo
    Sleep                            10
    Click Element                    xpath=//android.widget.Button[@content-desc="Entrar com a minha conta"]
    Sleep                            10   
    Wait Until Element Is Visible    ${btn_entrar}      15
    Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
    [Arguments]                      ${user_email}
    Input Value                      ${textbox_email}    ${user_email}
    Click Element                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]
    Input Value                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]    Positivo123                             


