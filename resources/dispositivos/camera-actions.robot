*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
####Sintaxe "E"
E clico em Agendar
    Wait Until Element Is Visible                    ${btn_gravacoes}                 20
    Click Element                                    ${btn_gravacoes}
    Wait Until Element Is Visible                    ${btn_config_sd}                 20
    Click Element                                    ${btn_config_sd}
    Click Element                                    ${btn_agenda}

E clico na engrenagem - Câmera
    Wait Until Element Is Visible                   ${config_camera}     30
    Click Element                                   ${config_camera}



####Sintaxe "Quando"
#Agendamentos
Quando realizo o agendamento AG - Uma vez
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_atv_gravacao_sd}
    Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${btn_salvar}

Quando realizo o agendamento AG - Seg Qua Sex
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_atv_gravacao_sd}
    Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_segunda}
    Click Element                                    ${checkbox_quarta}
    Click Element                                    ${checkbox_sexta}
    Click Element                                    ${btn_salvar}  

Quando realizo o agendamento AG - Ter Qui
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_atv_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_terca}
    Click Element                                    ${checkbox_quinta}
    Click Element                                    ${btn_salvar}

Quando realizo o agendamento AG - Dias da semana
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_atv_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_dias_da_semana}
    Click Element                                    ${btn_salvar}     

Quando realizo o agendamento AG - Todos os dias
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_atv_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_todos_os_dias}
    Click Element                                    ${btn_salvar}     

Quando realizo o agendamento PG - Uma vez
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_para_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${btn_salvar}

Quando realizo o agendamento PG - Seg Qua Sex
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_para_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_segunda}
    Click Element                                    ${checkbox_quarta}
    Click Element                                    ${checkbox_sexta}
    Click Element                                    ${btn_salvar}

Quando realizo o agendamento PG - Ter Qui
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_para_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_terca}
    Click Element                                    ${checkbox_quinta}
    Click Element                                    ${btn_salvar}    

Quando realizo o agendamento PG - Dias da semana
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_para_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_dias_da_semana}
    Click Element                                    ${btn_salvar}

Quando realizo o agendamento PG - Todos os dias
    Wait Until Element Is Visible                    ${btn_novo_agendamento}          20
    Click Element                                    ${btn_novo_agendamento}
    Click Element                                    ${btn_para_gravacao_sd}
        Click Element                                    ${btn_hora_device}
    Swipe                                            268    2137    268    1919
    Click Element                                    ${btn_confirmar}
    Click Element                                    ${checkbox_todos_os_dias}
    Click Element                                    ${btn_salvar}  
   


#GRAVAÇÃO
Quando clico em Gravar
    Sleep                                                                             3
    Wait Until Element Is Visible                    ${device_cam_wifi}               20
    Click Element                                    ${btn_gravar}
    Wait Until Element Is Visible                    ${notif_grava_ini}               20  
    Sleep                                                                             20
    Click Element                                    ${btn_gravar}
    Wait Until Element Is Visible                    ${notif_grava_salva}             20
    Click Element                                    ${btn_gravar}
    Wait Until Element Is Visible                    ${notif_grava_ini}               20  
    Sleep                                                                             20
    Click Element                                    ${btn_gravar}
    Wait Until Element Is Visible                    ${notif_grava_salva}             20



#Editar nome   ------ #NÃO COLOCAR VARIAVEL ATÉ QUE O ELEMENTO SEJA TRATADO
Quando edito o nome da câmera - Smart Câmera WiFi - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera WiFi Teste QA

Quando edito o nome da câmera - Smart Câmera WiFi 2ª Geração - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera WiFi 2ª Geração Teste QA   

Quando edito o nome da câmera - Smart Câmera 360° WiFi - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera 360° WiFi Teste QA     

Quando edito o nome da câmera - Vídeo Porteiro WiFi - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Vídeo Porteiro WiFi Teste QA

Quando edito o nome da câmera - Smart Câmera Bot WiFi - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera Bot WiFi Teste QA

Quando edito o nome da câmera - Smart Câmera Bot 2ª Geração - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera Bot 2ª Geração Teste QA        

Quando edito o nome da câmera - Smart Câmera WiFi com Bateria - Teste QA 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera WiFi com Bateria Teste QA


#Reverter nome
Quando edito o nome da câmera - Smart Câmera WiFi
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText
    Input Text Into Current Element    Smart Câmera WiFi

Quando edito o nome da câmera - Smart Câmera WiFi 2ª Geração 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera WiFi 2ª Geração

Quando edito o nome da câmera - Smart Câmera 360° WiFi 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera 360° WiFi

Quando edito o nome da câmera - Vídeo Porteiro WiFi 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Vídeo Porteiro WiFi

Quando edito o nome da câmera - Smart Câmera Bot WiFi 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera Bot WiFi

Quando edito o nome da câmera - Smart Câmera Bot 2ª Geração 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera Bot 2ª Geração

Quando edito o nome da câmera - Smart Câmera WiFi com Bateria 
    Click Element    ${btn_editar_nome}
    Clear Text    class=android.widget.EditText            
    Input Text Into Current Element    Smart Câmera WiFi com Bateria


Quando executo as ações da câmera
    [Arguments]    ${sensibilidade}    ${ativa_area}    ${area_detec}    ${salvar}    
    Wait Until Element Is Visible    ${btn_deteccao}    15
    Click Element                    ${btn_deteccao}
    Swipe universal    ${sensibilidade}
    Wait Until Element Is Visible    ${area_detec}    15
    Click Element    ${area_detec}
    Wait Until Element Is Visible    ${ativa_area}    15
    Click Element                    ${ativa_area}
    Wait Until Element Is Visible    ${salvar}    15
    Click Element                    ${salvar}   
    Capture Page Screenshot







######Sintaxe "ENTÃO"
#Editar nome
Então o nome é alterado para Smart Câmera WiFi - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_wifi}
    Capture Page Screenshot

Então o nome é alterado para Smart Câmera WiFi 2ª Geração - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_2gen}
    Capture Page Screenshot    

Então o nome é alterado para Smart Câmera 360° WiFi - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_360}    

Então o nome é alterado para Vídeo Porteiro WiFi - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_porteiro}

Então o nome é alterado para Smart Câmera Bot WiFi - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_bot_v1}

Então o nome é alterado para Smart Câmera Bot 2ª Geração - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_bot_v2} 

Então o nome é alterado para Smart Câmera WiFi com Bateria - Teste QA    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_edit_cam_bateria}           



#Reverter Nome
Então o nome é alterado para Smart Câmera WiFi    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_wifi}
    Capture Page Screenshot

Então o nome é alterado para Smart Câmera WiFi 2ª Geração    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_2gen}
    Capture Page Screenshot

Então o nome é alterado para Smart Câmera 360° WiFi   
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_360}

Então o nome é alterado para Vídeo Porteiro WiFi    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_porteiro}

Então o nome é alterado para Smart Câmera Bot WiFi    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_bot_v1}

Então o nome é alterado para Smart Câmera Bot 2ª Geração    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_bot_v2}

Então o nome é alterado para Smart Câmera WiFi com Bateria    
    # Click Element                                    ${btn_return_tela_cam}
    # Click Element                                    ${btn_return_tela_cam}
    Wait Until Element Is Visible                    ${device_cam_bateria}


#Gravação
Então a gravação é salva com sucesso      
    Wait Until Element Is Visible                    ${btn_gravacoes}                 20
    Click Element                                    ${btn_gravacoes}
    Sleep                                                                             20    
    Capture Page Screenshot                                                           20
    Wait Until Element Is Visible    accessibility_id=terça-feira\n21/03              20
    Click Element                    accessibility_id=terça-feira\n21/03
    Start Screen Recording
    Sleep                                                                             20
    Stop Screen Recording
    Capture Page Screenshot    20

#Agendamentos
Então o agendamento é realizado com sucesso
   Wait Until Element Is Visible                     ${titulo_agendar}                20
   Sleep                                                                              2
   Capture Page Screenshot                                                            20 