*** Settings ***


Resource                               ../../resources/base.robot


*** Variables ***


*** Keywords ***

###### Rotinas com Argumentos #####
E clico em adicionar condição
    [Arguments]    ${condicao}
    Swipe                              551    991    571    177
    Wait Until Element Is Visible      ${condicao}    20
    Click Element                      ${condicao}

E clico em adicionar tarefa
    [Arguments]    ${tarefa1}    ${tarefa2}
    Wait Until Element Is Visible      ${tarefa1}    20
    Click Element                      ${tarefa1}
    Click Element                      ${tarefa2}

E desmarco checkbox de todas as condições
    Swipe                              551    991    571    177
    Run Keyword And Ignore Error       Click Element      ${checkbox_todascondicoes}
    Swipe                              551    991    571    177
    Run Keyword And Ignore Error       Click Element      ${checkbox_todascondicoes}

Então salvo a Rotina com sucesso
    [Arguments]    ${rotina}
    Swipe                              551    991    571    -2000
    Wait Until Element Is Visible      ${rotina}    15
    Wait Until Element Is Visible      ${btn_salvar}    10
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            


#################Criando cena - SMOKE#########################
Quando eu clico no botão Nova Rotina 
    Wait Until Element Is Visible      ${btn_nova_rotina}    20
    Click Element                      ${btn_nova_rotina}
    Run Keyword And Ignore Error       Click Element    ${btn_jump}

E seleciono Receber uma notificação
    Wait Until Element Is Visible      ${btn_receber_notif}    20
    Click Element                      ${btn_receber_notif}
    Swipe                              551    991    571    177


E clico no botão Executar um dispositivo  
    Capture Page Screenshot            5
    Wait Until Element Is Visible      ${btn_receber_notif}    20
    Click Element                      ${btn_receber_notif}
    Wait Until Element Is Visible      ${btn_executar_dispositivo}    20  
    Click Element                      ${btn_executar_dispositivo}

E seleciono o dispositivo desejado   
    Click Element                      ${btn_selecionar_dispositivo}

E seleciono a lampada    
    Wait Until Element Is Visible      ${btn_iluminacao}    20
    Click Element                      ${btn_iluminacao}    
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Smart Lâmpada WiFi RGB+"]    20
    Click Element                      xpath=//android.widget.ImageView[@content-desc="Smart Lâmpada WiFi RGB+"]
    Wait Until Element Is Visible      accessibility_id=Ligar    20
    Click Element                      accessibility_id=Ligar
    Capture Page Screenshot            20
    Click Element                      ${btn_salvar}
    
E salvo a pré visualização    
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina} 
    Input Text Into Current Element    Teste1
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}
    
E seleciono Seg Qua Sex
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}

E salvo nome Agenda - Seg Qua Sex
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina}
    Input Text Into Current Element    Seg Qua Sex
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}
    
Então a rotina é salva com sucesso
    Swipe                              551    991    571    177
    Swipe                              551    991    571    177
    Capture Page Screenshot            5        
    Click Element                      ${btn_salvar}
    Capture Page Screenshot            20



#######################Sintaxe utilizada nos cenários UPDATE########################################

Dado que crio uma Rotina
    Wait Until Element Is Visible    ${btn_rotinas}    20
    Click Element                    ${btn_rotinas}
    Wait Until Element Is Visible    ${btn_nova_rotina}    20
    Click Element                    ${btn_nova_rotina}
    
Quando clico em receber uma notificação
    Wait Until Element Is Visible    ${btn_receber_notif}    20
    Click Element                    ${btn_receber_notif}
#    Swipe                            483    815    519    293  # SWIPE rotina Q20

### AGENDAMENTO ###

E configuro condição Uma data ou horário
    Swipe                            483    815    519    293
    Click Element                    ${btn_data_horario}
    ${time}    Get Current Date    result_format=%H:%M
    Click Element    accessibility_id=${time}
    Swipe    266    1980    266    1749
    Click Element    ${btn_confirmar}
#    Click Element                    accessibility_id=11:17   # elemente pega a data e hora atual, verificar se vai selecionar o botão correto no Robot.
#    Swipe                            137    1197    142    1150  #swipe pequeno para selecionar uma hora depois
#    Click Element                    ${btn_confirmar}

E seleciono dias da semana
    Click Element                    accessibility_id=Dias da semana

E seleciono dias da semana - Seg Qua Sex
    Click Element                    accessibility_id=    
    
E salvo as configurações
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_entendido}

E salvo o nome Agenda dias da semana
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina}
    Input Text Into Current Element    Agenda dias da semana
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}

Então salvo a Rotina chegada ou saída
    Swipe                              483    1342    519    176
    Swipe                              483    1342    519    176        
    Click Element                      ${btn_salvar}
    Sleep                              1
    Capture Page Screenshot            20
    Click Element                      ${btn_home}


######TODOS OS DIAS######
E seleciono todos os dias
    Click Element                    accessibility_id=Todos os dias

E salvo nome Agenda todos os dias
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina}
    Input Text Into Current Element    Agenda todos os dias
    Wait Until Element Is Visible      ${img_rotina}    20
    Click Element                      ${img_rotina}
    Click Element                      ${btn_salvar}



#Rotina robô
Quando seleciono o Smart Robô
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +

E defino para ligar o robô - Atraso 20s
    Click Element    xpath=(//android.widget.Button[@content-desc="Ligar"])[1]
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E defino o Modo Espera - Atraso 20s
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    accessibility_id=Selecione    
    Click Element    accessibility_id=Espera
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E defino o Modo Inteligente - Atraso 20s
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    accessibility_id=Selecione    
    Click Element    accessibility_id=Inteligente
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E defino o Modo Cantos - Atraso 20s
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    accessibility_id=Selecione    
    Click Element    accessibility_id=Cantos
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E defino o Modo Espiral - Atraso 20s
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    accessibility_id=Selecione    
    Click Element    accessibility_id=Espiral
    Click Element    ${btn_salvar}   
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E defino o Modo Carregar
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    accessibility_id=Selecione    
    Click Element    accessibility_id=Carregar
    Click Element    ${btn_salvar}
    Click Element    ${btn_salvar}
    

E defino para Procurar o robô
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Wait Until Element Is Visible    accessibility_id=Selecione    20
    Click Element    xpath=(//android.widget.Button[@content-desc="Ligar"])[2]
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}   


E defino para Desligar o robô - Atraso 20s
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_eletroportateis}
    Click Element    accessibility_id=Smart Robô Aspirador Wi-Fi +
    Click Element    xpath=(//android.widget.Button[@content-desc="Desligar"])[1]
    Click Element    ${btn_salvar}
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E salvo o nome robô
    Sleep    3
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina}
    Input Text Into Current Element    Robô
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                      ${btn_salvar}    

Então salvo a rotina do robô
    Swipe                              483    1342    519    176
    Swipe                              483    1342    519    176 
    Swipe                              483    1342    519    176       
    Click Element                      ${btn_salvar}
    Sleep                              2
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Robô
    Capture Page Screenshot    2



###EDITAR-ESTADO-INICIAL-DA-LAMPADA
Dado que clico na lampada Eboy
    Sleep    3
    Click Element    accessibility_id=Lâmpada Eboy - (s)\nDesligado

Dado que clico na lampada Smart Lâmpada WI-Fi
    Sleep    3
    Click Element    accessibility_id=Smart Lâmpada Wi-Fi\nModo: Efeitos


Dado que clico no Smart Painel LED Wi-Fi
    Sleep    3
    Click Element    accessibility_id=Smart Painel de LED Wi-Fi\nDesligado

Quando altero para Modo inicial
    Wait Until Element Is Visible    accessibility_id=Estado inicial    20
    Click Element    accessibility_id=Estado inicial
    Wait Until Element Is Visible    accessibility_id=Modo inicial\nCor e brilho padrão inicial
    Click Element    accessibility_id=Modo inicial\nCor e brilho padrão inicial

Quando altero para Restaurar memória
    Wait Until Element Is Visible    accessibility_id=Estado inicial    20
    Click Element    accessibility_id=Estado inicial
    Wait Until Element Is Visible    accessibility_id=Restaurar memória\nCor e brilho usados pela última vez
    Click Element    accessibility_id=Restaurar memória\nCor e brilho usados pela última vez

Quando altero para Personalizado
    Wait Until Element Is Visible    accessibility_id=Estado inicial    20
    Click Element    accessibility_id=Estado inicial
    Wait Until Element Is Visible    accessibility_id=Personalizado\nCor e brilho selecionados    20
    Click Element    accessibility_id=Personalizado\nCor e brilho selecionados
    Swipe    214    1801    602    1798
    Swipe    217    1953    605    1946
    Capture Page Screenshot
    Click Element    ${btn_salvar}


Então o estado inicial da lâmpada é alterado
    Capture Page Screenshot    

#Rotina com PLUG
Quando seleciono o PLUG
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_conforto_automacao}
    Click Element    xpath=//android.widget.ImageView[@content-desc="Plug Max"]

E crio a primeira tarefa - Ligado 20s
    Sleep            2
    Click Element    xpath=//android.widget.Button[@content-desc="Ligar"]
    Click Element    ${btn_salvar}
    Sleep            2
    Click Element    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe    862    1991    858    892
    Click Element    xpath=//android.view.View[@content-desc="15s"]
    Click Element    ${btn_salvar}

E crio a segunda tarefa - Desligado
    Click Element    ${btn_executar_dispositivo}
    Click Element    ${btn_selecionar_dispositivo}
    Click Element    ${btn_conforto_automacao}
    Click Element    xpath=//android.widget.ImageView[@content-desc="Plug Max"]
    Sleep            2
    Click Element    xpath=//android.widget.Button[@content-desc="Desligar"]
    Click Element    ${btn_salvar}
    
E salvo o nome PLUG
    Sleep                              2
    Click Element                      ${btn_proximo}
    Click Element                      ${textbox_nome_rotina}
    Input Text Into Current Element    PLUG
    Wait Until Element Is Visible        ${img_rotina}    20
    Click Element                        ${img_rotina}
    Click Element                      ${btn_salvar}

Então salvo a rotina PLUG
    Swipe                              483    1342    519    176
    Swipe                              483    1342    519    176 
    Click Element                      ${btn_salvar}
    Sleep                              2
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    PLUG
    Capture Page Screenshot    2

# Executando cena
E executo a cena
    [Arguments]    ${pesquisar}    ${desc_cena}
    Wait Until Element Is Visible        ${pesquisar}    20
    Click Element                        ${pesquisar}
    Input Text Into Current Element      ${desc_cena}
    Hide Keyboard
    Run Keyword And Ignore Error    Wait Until Element Is Visible        accessibility_id=Executar    20
    Run Keyword And Ignore Error    Click Element                        accessibility_id=Executar
    Run Keyword And Ignore Error    Wait Until Element Is Visible        xpath=(//android.widget.Button[@content-desc="Executar"])[1]    20
    Run Keyword And Ignore Error    Click Element                        xpath=(//android.widget.Button[@content-desc="Executar"])[1]

# E executo a cena
#     Wait Until Element Is Visible        ${textbox_busque_aqui}    20
#     Click Element                        ${textbox_busque_aqui}
#     Input Text Into Current Element      Teste1
#     Hide Keyboard                                                       (//android.widget.Button[@content-desc="Executar"])[1]

#     Run Keyword And Ignore Error    Wait Until Element Is Visible        accessibility_id=Executar    20
#     Run Keyword And Ignore Error    Click Element                        accessibility_id=Executar
#     Run Keyword And Ignore Error    Wait Until Element Is Visible        xpath=(//android.widget.Button[@content-desc="Executar"])[1]    20
#     Run Keyword And Ignore Error    Click Element                        xpath=(//android.widget.Button[@content-desc="Executar"])[1]
                                               
    
Então sou notificado
    Capture Page Screenshot    20



###################################DEMAIS CENÁRIOS##############################


Então salvo a rotina Chegada e saída com sucesso
    Swipe                              483    1342    519    176
    Swipe                              483    1342    519    176        
    Click Element                      ${btn_salvar}
    Sleep                              3
    Click Element    ${textbox_nome_rotina}
    Input Text Into Current Element    Agenda dias da semana
    Capture Page Screenshot    2