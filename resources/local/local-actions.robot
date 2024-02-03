*** Settings ***

Resource                               ../../resources/base.robot


*** Variables ***

${local_edit}                          (//android.widget.ImageView[@content-desc="Teste Automação\nMeu local"])[1]
${edit_name}                           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.view.View[1]/android.widget.ImageView
${textbox_name}                        class=android.widget.EditText 
  
*** Keywords ***
Quando seleciono/adiciono o local
    [Arguments]    ${local}    ${textbox}    ${edit_textbox}    ${nome}    ${salva_nome}    ${localizacao}    ${confir_end}
    Wait Until Element Is Visible      ${local}    15
    Click Element                      ${local}
    Wait Until Element Is Visible      ${textbox}    15
    Click Element                      ${textbox}
    Wait Until Element Is Visible      ${edit_textbox}    15
    Click Element                      ${edit_textbox}
    Input Text Into Current Element    ${nome}
    Click Element                      ${salva_nome}
    Wait Until Element Is Visible      ${btn_meulocal}    15
    Click Element                      ${localizacao}
    Wait Until Element Is Visible      ${confir_end}    15
    Click Element                      ${confir_end}
                        
    
# E confirmo a localização
#     Click Element    accessibility_id=Localização
#     Wait Until Element Is Visible    accessibility_id=Entendido    40
#     Click Element    accessibility_id=Entendido
#     Wait Until Element Is Visible    id=com.android.packageinstaller:id/permission_allow_button    
#     Click Element    id=com.android.packageinstaller:id/permission_allow_button
#     Wait Until Element Is Visible    xpath=//android.widget.Button[@content-desc="Confirmar endereço"]    55
#     Click Element     xpath=//android.widget.Button[@content-desc="Confirmar endereço"]   
#     Capture Page Screenshot    15

Então salvo com sucesso
    Wait Until Element Is Visible      ${btn_salvar_local}    15
    Click Element                      ${btn_salvar_local}
    Wait Until Element Is Visible      accessibility_id=Teste Automação- Teste Au\nMeu local    15
    Get Element Attribute              accessibility_id=Teste Automação- Teste Au\nMeu local    attribute=content-desc
    # Wait Until Element Is Visible      xpath=(//android.widget.ImageView[@content-desc="Teste Automação\nMeu local"])[1]    15
    Capture Page Screenshot            10    


#Removendo local
E seleciono o local
    Click Element                    accessibility_id=Teste Automação- Teste Au\nMeu local
    
E removo o local e confirmo
    Wait Until Element Is Visible    accessibility_id=Teste Automação- Teste Au\nMeu local    15
    Click Element                    accessibility_id=Teste Automação- Teste Au\nMeu local
    Wait Until Element Is Visible      ${btn_remover_local}    15
    Click Element                      ${btn_remover_local}
    Wait Until Element Is Visible      ${btn_yes}    15
    Click Element                      ${btn_yes}
    Wait Until Element Is Visible      ${btn_gerenciar_locais1}    15
    Click Element                      ${btn_gerenciar_locais1}

Então é notificado que excluiu com sucesso
    Open Notifications
    Sleep                              5
    Capture Page Screenshot            5       

#Editando local
Então a alteração é realizada 
    Click Element                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]
    Capture Page Screenshot            10

#Adicionando membro
Quando adiciono/aceito o membro no local
    [Arguments]    ${local}    ${membro}    ${textbot_email}    ${email}    ${textbox_nome}    ${nome}    ${convite}
    Wait Until Element Is Visible      ${local}    15
    Click Element                      ${local}
    Wait Until Element Is Visible      ${membro}    15
    Click Element                      ${membro}
    Capture Page Screenshot
    Run Keyword And Ignore Error  Click Text                         ${textbot_email}
    Run Keyword And Ignore Error  Input Text Into Current Element    ${email}
    Run Keyword And Ignore Error  Click Text                         ${textbox_nome}
    Run Keyword And Ignore Error  Run Keyword And Ignore Error  Input Text Into Current Element    ${nome}
    Wait Until Element Is Visible      ${convite}    15  
    Click Element                      ${convite}



Então é exibido o convite pendente
    Capture Page Screenshot
    Run Keyword And Ignore Error    Click Element                    ${btn_entendido}
    Wait Until Page Contains        Convite pendente    15
    # Wait Until Element Is Visible    accessibility_id=Teste\nConvite pendente\nUsuário    15
    Capture Page Screenshot



#Aceitando convite
Então é notificado que o membro foi adicionado
    Wait Until Element Is Visible    ${btn_perfil}    15
    Click Element                    ${btn_perfil}
    Wait Until Element Is Visible    ${btn_notificacoes}    15
    Click Element                    ${btn_notificacoes}
    Wait Until Element Is Visible    ${btn_atualizaçoes}    15
    Click Element                    ${btn_atualizaçoes}
    Wait Until Page Contains        Zezinho Tester te adicionou como membro de "Teste Automação- Teste Au", pode usar todos os dispositivos e dispositivos inteligentes em casa agora.     15      
    # Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[5]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView    15
    Capture Page Screenshot

#Adicionando ambiente
Então o ambiente é adicionado com sucesso
    Wait Until Element Is Visible      ${ambiente_salvo}    15    
    Capture Page Screenshot

# #Removendo membro
Então o membro é removido
    Swipe                              543    637    522    300
    Capture Page Screenshot            10

#Login em outra conta para processos em que é necessário utilização do segundo usuário
Dado que logo na conta que recebeu o convite
    [Arguments]    ${home}    ${perfil}    ${sair}    ${sair_conta}    ${entrar_conta}    ${txb_email}    ${email}    ${txb_senha}    ${senha}    ${entrar}    ${local}
    Wait Until Element Is Visible    ${home}
    Click Element    ${home}
    Wait Until Element Is Visible    ${perfil}
    Click Element    ${perfil}
    Wait Until Element Is Visible    ${sair}    15
    Click Element    ${sair}
    Wait Until Element Is Visible    ${sair_conta}    15
    Click Element    ${sair_conta}
    Wait Until Element Is Visible    ${entrar_conta}    15
    Click Element    ${entrar_conta}
    Click Element    ${txb_email}
    Input Text Into Current Element    ${email}
    Click Element    ${txb_senha}
    Input Text Into Current Element    ${senha}
    Click Element    ${entrar}
    Wait Until Element Is Visible    ${local}     



#---------------------------------------------------------------------------------------
Então é retornando que não tem permissão para alterar 
    Wait Until Element Is Visible    ${btn_entendido}    15
    Capture Page Screenshot
    Click Element    ${btn_entendido}

