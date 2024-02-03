*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***

###Conexões com assistentes

Dado que clico na Guia
    [Arguments]    ${guia}    ${opcao}
    Wait Until Element Is Visible    ${guia}    15
    Click Element                    ${guia}
    Wait Until Element Is Visible    ${opcao}    15
    Click Element                    ${opcao}
    Capture Page Screenshot          10

# E no Perfil seleciono opção
#     [Arguments]    ${opcao_perfil}
#     Wait Until Element Is Visible    ${opcao_perfil}    15
#     Click Element                    ${opcao_perfil}
#     Capture Page Screenshot

E na Configuração seleciono opção
    [Arguments]    ${opcao_configuracoes}
    Wait Until Element Is Visible    ${opcao_configuracoes}    15
    Click Element                    ${opcao_configuracoes}

E sobre o App seleciono opção
    [Arguments]    ${opcao_sobre}
    Wait Until Element Is Visible    ${opcao_sobre}    15
    Click Element                    ${opcao_sobre}



E clico em perfil
    Click Element                      xpath=//android.widget.ImageView[@content-desc="Perfil\nGuia 4 de 4"]
    
Quando clico em conexões com assistentes
    Sleep                            3
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Conexões com assistentes"]    10
    #         Não carregou o elemento dentro de 10
    # ...     segundos
    Click Element    xpath=//android.widget.ImageView[@content-desc="Conexões com assistentes"]

E realizo o vinculo da conta Google
    Click Element    xpath=//android.view.View[@content-desc="Conectar ao Google"]
    Sleep            2
    Click Text       Fazer login novamente
    Sleep            10
    Click Text       Cancelar

Então a vinculação do Google é realizada
    Sleep                     3
    Text Should Be Visible    Crie uma casa
    Capture Page Screenshot    10
    
    Close All Applications


##############ALEXA#####################
E realizo o vinculo da Alexa
    Click Element    xpath=//android.view.View[@content-desc="Conectar a Alexa"]
    
Então a vinculação com a ALEXA é realizada    
    Sleep            7
    Text Should Be Visible    Já está vinculado à Alexa da Amazon
    Text Should Be Visible    Você pode controlar dispositivos habilitados para Alexa com os alto-falantes de Alexa da Amazon, como
    Text Should Be Visible    Alexa, acender a luz\n\n Alexa, Ar condicionado a 20° C\n\n Alexa, desligar o difusor\n\nAlexa, aumentar o ar condicionado em 3 graus
    
###Enviar Feedback
Quando clico em Ajuda
    Click Element    xpath=//android.widget.ImageView[@content-desc="Ajuda"]

E clico na opção Relatar problema
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Relatar problema"]    10
        
    Click Element    xpath=//android.widget.ImageView[@content-desc="Relatar problema"]

E preencho o campo
    Wait Until Element Is Visible    class=android.widget.EditText    15
    Click Element    class=android.widget.EditText    
    Input Text Into Current Element    TesteQA Automação Smoke

E seleciono o Tipo de problema
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Tipo de problema\nSelecionar"]    10
    
    Click Element    xpath=//android.view.View[@content-desc="Tipo de problema\nSelecionar"]
    Capture Page Screenshot    
    Wait Until Element Is Visible    accessibility_id=Dispositivo com defeito    10    
    Click Element    accessibility_id=Dispositivo com defeito  
    Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Salvar"]    10
    
    Click Element    xpath=//android.widget.Button[@content-desc="Salvar"]

 E seleciono o Dispositivo com problema       
    Click Element    xpath=//android.view.View[@content-desc="Dispositivo com problema\nSelecionar"]
    Wait Until Element Is Visible    accessibility_id=Minha Casa    10
    
    Click Element    accessibility_id=Minha Casa
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Smart Lâmpada WiFi RGB+"]    10
    Click Element    xpath=//android.widget.ImageView[@content-desc="Smart Lâmpada WiFi RGB+"]

E clico no botão para Enviar Feedback
    Click Element    accessibility_id=Enviar Feedback

E preencho o campo de e-mail   
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Relatar problema"]    10
    Click Element                      	xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.EditText[1]
    Input Text Into Current Element    softwarecasapositivo@gmail.com
    
E clico para enviar o Feedback    
    Hide Keyboard
    Capture Page Screenshot
    Wait Until Element Is Visible    accessibility_id=Enviar    10
    
    Click Element    accessibility_id=Enviar

E clico para enviar o Feedback Outros   
    Hide Keyboard
    Capture Page Screenshot
    Wait Until Element Is Visible    accessibility_id=Enviar    10
    
    Click Element    accessibility_id=Enviar    


E preencho os campos 2
    Click Element    class=android.widget.EditText    
    Input Text Into Current Element    TesteQA Automação Smoke 2
    

E seleciono o Tipo de problema 2
    Wait Until Element Is Visible    xpath=//android.view.View[@content-desc="Tipo de problema\nSelecionar"]    10
    Click Element                    xpath=//android.view.View[@content-desc="Tipo de problema\nSelecionar"]
    Capture Page Screenshot    
    Wait Until Element Is Visible    accessibility_id=Outros	    10   
    Click Element                    accessibility_id=Outros  
    Wait Until Element Is Visible    ${btn_salvar}    10
    Click Element                    ${btn_salvar}
    


Então o Feedback é enviado com sucesso     
    Wait Until Element Is Visible    accessibility_id=Voltar   10
    Click Element    accessibility_id=Voltar
    Capture Page Screenshot    2