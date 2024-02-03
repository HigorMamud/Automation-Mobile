*** Settings ***

Resource                             ../resources/base.robot 
   

*** Keywords ***
Dado que estou na tela inicial do aplicativo
    Wait Until Element Is Visible        ${btn_login}    20
    Capture Page Screenshot

Quando clico no botão para entrar com a minha conta
    Wait Until Element Is Visible        ${btn_login}    20    # minha conta
    Click Element                        ${btn_login}   
    # Wait Until Element Is Visible        ${btn_entrar}      20

E digito o e-mail        
    Click Element                        ${textbox_email}
    [Arguments]                          ${user_email}
    Input Text Into Current Element      ${user_email}
    # Input Text    ${textbox_email}    ${user_email}

E digito a senha
    Click Element                        ${textbox_password}
    [Arguments]                          ${user_password}
    Input Text Into Current Element      ${user_password}   
    # Input text       ${textbox_password}    ${user_password} 
    
E clico no botão entrar    
    ${btn_enter}                     Set Variable        ${btn_entrar}
    Click Element                        ${btn_enter}    
    
Então sou direcionado para home
    Capture Page Screenshot    5
    Wait Until Element Is Visible        ${btn_home_local}    20
    Capture Page Screenshot    20
    Click Element                        ${btn_home_opcoes}
    Click Element                        ${btn_alterar_visualizacao}
    Capture Page Screenshot              20



Então é retornando que a conta ou senha esta incorreta
    Wait Until Element Is Visible        accessibility_id=Conta ou senha incorreta!        5


# Termos de uso
Então sou direcionado para pagina com os termos
    Wait Until Page Contains              Termos de uso    20 
    Capture Page Screenshot               20

# Politica de privacidade
Então sou direcionado para pagina Politica
    Wait Until Page Contains              Política de privacidade    20 
    Capture Page Screenshot               20



# Login base para todos os testes

Dado que estou logado no App
    Wait Until Element Is Visible         ${btn_login}    20                               5        
    Click Element                         ${btn_login}
    Click Element                         ${textbox_email}
    Input Text Into Current Element       softwarecasapositivo@gmail.com
    Click Element                         ${textbox_password}
    Input Text Into Current Element       Positivo123
    ${btn_enter}                       Set Variable        ${btn_entrar}
    Click Element                         ${btn_enter}
    Sleep                                 3
    Wait Until Element Is Visible         ${btn_perfil}

E realizado o login com uma conta ativa
    Click Element                        ${btn_login}
    Click Element                        ${textbox_email}
    Input Text Into Current Element      softwarecasapositivo@gmail.com
    Click Element                        ${textbox_password}
    Input Text Into Current Element      Positivo123
    ${btn_enter}                       Set Variable        ${btn_entrar}
    Click Element                        ${btn_enter}
    Wait Until Element Is Visible        accessibility_id=CLIQUE AQUI PARA ADICIONAR UM DISPOSITIVO INTELIGENTE    35
    Click Element                        ${btn_jump}

Quando clico em perfil
    Click Element                        ${btn_perfil}
    Capture Page Screenshot    5

Então realizo o logout 
    Wait Until Element Is Visible        ${btn_sair_da_conta}    20
    Click Element                        ${btn_sair_da_conta}
    Wait Until Element Is Visible        ${btn_login}    20
    Capture Page Screenshot
    
Dado que estou na tela home
    Wait Until Element Is Visible        ${btn_home_local}    20
    Wait Until Element Is Visible        ${btn_home}      20    
    Wait Until Element Is Visible        ${btn_rotinas}   20   
    Wait Until Element Is Visible        ${btn_loja}      20   
    Wait Until Element Is Visible        ${btn_perfil}    20   
    

Dado que Aguardo a home carregar
    Wait Until Element Is Visible        ${btn_home_local}    20


#Logar com Facebook, conta já cadastrada
Quando clico no botão para entrar com facebook
    Click Element                        ${btn_facebook}
    # Wait Until Element Is Visible        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.widget.Button    20
    # Click Element                        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout[2]/android.webkit.WebView/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.widget.Button

Então o login é realizado com sucesso
    Wait Until Element Is Visible        ${btn_novo_device}    20
    Capture Page Screenshot

#Desconectar Assistentes de voz
Quando clico para desconectar o assistente 
    [Arguments]    ${assistente}
    Wait Until Element Is Visible    ${assistente}    20
    Click Element    ${assistente}
    Wait Until Element Is Visible    ${btn_desvinculo_assistente}    20
    Click Element                    ${btn_desvinculo_assistente}
    Wait Until Element Is Visible    ${btn_confirmar_desvinculo}    20
    Click Element                    ${btn_confirmar_desvinculo}
    
Então Assistente é desconectado
    [Arguments]    ${conect_assist}
    Wait Until Element Is Visible    ${conect_assist}    20
    Capture Page Screenshot    20

Desconectar Assistente Alexa
    Click Element                    ${btn_perfil}
    Wait Until Element Is Visible    ${btn_conexões_assistentes}
    Click Element                    ${btn_conexões_assistentes}    
    Click Element                    ${btn_desvinculo_alexa}
    Click Element                    ${btn_desvinculo_assistente}
    Click Element                    ${btn_confirmar_desvinculo}

E saio do assitente
    Wait Until Element Is Visible    ${sair_assistente}    20
    Click Element                    ${sair_assistente}

Então Assistente Alexa é desconectado
    Wait Until Element Is Visible    accessibility_id=Conexões    20
    Capture Page Screenshot    20
