*** Settings ***


Resource                               ../../../resources/base.robot


*** Keywords ***
#COMPATIVEL COM TODAS AS ROTINAS DE AÇÕES - TODOS DISPOSITIVOS
Quando seleciono a categoria
    Wait Until Element Is Visible    ${btn_selecionar_dispositivo}    15
    [Arguments]                      ${selecionaDisp}    ${categoria}    ${device}    
    Wait Until Element Is Visible    ${selecionaDisp}    15
    Click Element                    ${selecionaDisp}
    Wait Until Element Is Visible    ${categoria}    15
    Click Element                    ${categoria}
    Wait Until Element Is Visible    ${device}     15
    Click Element                    ${device} 
    Capture Page Screenshot    



#Condição "E"
#COMPATIVEL COM CAMERA BOT 2 E WIFI 2
E defino a tarefa para Ligar todas as opções da câmera
    [Arguments]                      ${ligar1}    ${ligar2}    ${ligar3}
    Wait Until Element Is Visible    ${ligar1}                                   15
    Click Element                    ${ligar1}    
    Click Element                    ${ligar2}
    Run Keyword And Ignore Error    Click Element                  ${ligar3}
    Click Element                    ${btn_salvar}

#COMPATIVEL COM CAMERA 360 E WIFI
E defino as duas tarefas para Ligar
    [Arguments]                      ${ligar1}    ${ligar2}
    Wait Until Element Is Visible    ${ligar1}                                   15
    Click Element                    ${ligar1}
    Click Element                    ${ligar2}
    Click Element                    ${btn_salvar}
    Run Keyword And Ignore Error     Click Element                    ${btn_salvar}   

#COMPATIVEL COM CAMERA 360
E defino as duas tarefas para Desligar
    [Arguments]                      ${desligar1}    ${desligar2}
    Wait Until Element Is Visible    ${desligar1}                                   15
    Click Element                    ${desligar1}
    Click Element                    ${btn_salvar}    
    Click Element                    ${desligar2}
    Click Element                    ${btn_salvar}

#COMPATIVEL COM CAMERA WIFI 2
E defino a tarefa para Desligar todas as opções da câmera
    [Arguments]                      ${desligar1}    ${desligar2}    ${desligar3}
    Wait Until Element Is Visible    ${desligar1}                                   15
    Click Element                    ${desligar1}    
    Click Element                    ${desligar2}
    Run Keyword And Continue On Failure    Click Element                    ${desligar3}
    Click Element                    ${btn_salvar}

#COMPATIVEL COM VÍDEO PORTEIRO
E defino a tarefa para Ligar apenas 
    [Arguments]    ${ligarDisp}
    Wait Until Element Is Visible    ${ligarDisp}    15
    Click Element                    ${ligarDisp}
    Click Element                    ${btn_salvar}
    Run Keyword And Ignore Error     Click Element                    ${btn_salvar}

E defino a tarefa para Ligar apenas - Sensibilidade Média
    [Arguments]    ${ligarDisp}
    Wait Until Element Is Visible    ${ligarDisp}    15
    Click Element                    ${ligarDisp}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_salvar}    

E defino a Sensibilidade 0 e a tarefa para Ligar apenas 
    [Arguments]    ${ligarDisp}
    Wait Until Element Is Visible    ${ligarDisp}    15
    Click Element                    ${ligarDisp}
    Click Element                    ${btn_salvar}
    Run Keyword And Ignore Error    Click Element                    ${btn_salvar}

E defino a Sensibilidade 0 e a tarefa para Desligar apenas 
    [Arguments]    ${desligarDisp}
    Wait Until Element Is Visible    ${desligarDisp}    15
    Click Element                    ${desligarDisp}
    Click Element                    ${btn_salvar}    

E defino a tarefa para Desligar apenas 
    [Arguments]    ${desligarDisp}
    Wait Until Element Is Visible    ${desligarDisp}    15
    Click Element                    ${desligarDisp}
    Click Element                    ${btn_salvar}        

E seleciono a sensibilidade média Ligar
    [Arguments]                      ${ligar1}    ${ligar2}
    Wait Until Element Is Visible    ${ligar1}                                   15
    Click Element                    ${ligar1}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}    
    Click Element                    ${ligar2}
    Click Element                    ${btn_salvar}

E seleciono a sensibilidade média e Ligar
    [Arguments]                      ${vis_noturna}    ${vis_noturna2}    ${ligar1}    ${ligar2}
    Wait Until Element Is Visible    ${vis_noturna}                                15
    Click Element                    ${vis_noturna}
    Click Element                    ${vis_noturna2}
    Click Element                    ${btn_salvar}
    Click Element                    ${ligar1}    
    Click Element                    ${ligar2}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_salvar} 

E seleciono a sensibilidade média e Ligar apenas D-Movimento
    [Arguments]                      ${vis_noturna}    ${vis_noturna2}    ${ligar2}
    Wait Until Element Is Visible    ${vis_noturna}                                15
    Click Element                    ${vis_noturna}
    Click Element                    ${vis_noturna2}
    Click Element                    ${btn_salvar}    
    Click Element                    ${ligar2}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_salvar}

E seleciono a sensibilidade média e Ligar apenas D-Corpo
    [Arguments]                      ${vis_noturna}    ${vis_noturna2}    ${ligar}
    Wait Until Element Is Visible    ${vis_noturna}                                15
    Click Element                    ${vis_noturna}
    Click Element                    ${vis_noturna2}
    Click Element                    ${btn_salvar}    
    Click Element                    ${ligar}
    Click Element                    ${btn_salvar}           

E seleciono a sensibilidade média Desligar
    [Arguments]                      ${desligar1}    ${desligar2}
    Wait Until Element Is Visible    ${desligar1}                                   15
    Click Element                    ${desligar1}    
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${desligar2}
    Click Element                    ${btn_salvar}

E seleciono a sensibilidade média e Desligar
    [Arguments]                      ${vis_noturna}    ${vis_noturna2}    ${desligar1}    ${desligar2}
    Wait Until Element Is Visible    ${vis_noturna}                                15
    Click Element                    ${vis_noturna}
    Click Element                    ${vis_noturna2}
    Click Element                    ${btn_salvar}                                 
    Click Element                    ${desligar1}    
    Click Element                    ${desligar2}
    Click Element                    ${btn_salvar}    

E seleciono a sensibilidade média Ligar apenas
    [Arguments]                      ${ligar1}
    Wait Until Element Is Visible    ${ligar1}                                   15
    Click Element                    ${ligar1}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_salvar}

E seleciono a sensibilidade média Desligar apenas
    [Arguments]                      ${desligar1}
    Wait Until Element Is Visible    ${desligar1}                                   15
    Click Element                    ${desligar1}    
    Click Element                    ${btn_sensibilidade}
    Click Element                    accessibility_id=0%
    Click Element                    ${btn_salvar}
    Click Element                    ${btn_salvar}        
    

E defino as ações para ligar/desligar as funcionalidades da câmera bot v1
    [Arguments]    ${ligar1}    ${ligar2}    ${ligar3}    ${ligar4}    ${ligar5}   ${movimento}    ${salvar_mov}    ${ruido}    ${salvar_rui}    ${modo}    ${salvar_mod}    ${ctl_movi}    ${direcao}    
    Wait Until Element Is Visible    ${ligar1}
    Click Element    ${ligar1}
    Click Element    ${ligar2}
    Click Element    ${ligar3}
    Run Keyword And Ignore Error  Click Element    ${movimento}
    Run Keyword And Ignore Error  Click Element    ${salvar_mov}
    Click Element    ${ligar4}
    Run Keyword And Ignore Error  Click Element    ${ruido}
    Run Keyword And Ignore Error  Click Element    ${salvar_rui}
    Click Element    ${ligar5}
    Run Keyword And Ignore Error  Click Element    ${modo}
    Run Keyword And Ignore Error  Click Element    ${salvar_mod}
    Click Element    ${ctl_movi}
    Click Element    ${direcao}
    Run Keyword And Ignore Error  Click Element    ${btn_salvar}
    Run Keyword And Ignore Error  Click Element    ${btn_salvar}



E adiciono um atraso de 10 segundos
    Click Element                    xpath=//android.view.View[@content-desc="Adicionar atraso"]
    Swipe                            862    1991    858    892
    Click Element                    xpath=//android.view.View[@content-desc="10s"]
    Click Element                    ${btn_salvar}


E salvo o nome da Rotina
    Wait Until Element Is Visible        ${btn_proximo}    15
    Click Element                        ${btn_proximo}
    Click Element                        ${textbox_nome_rotina}
    [Arguments]                          ${text_nome_rotina}
    Input Text Into Current Element      ${text_nome_rotina}
    Wait Until Element Is Visible        ${img_rotina}    15
    Click Element                        ${img_rotina}
    Click Element                        ${btn_salvar}
         

#EM CRIAÇÃO
E defino as condições da camera  
    [Arguments]    ${slider}    ${mov}    ${sens}    ${salvar}      
    Wait Until Element Is Visible    ${mov}     15
    Click Element    ${mov}
    Wait Until Element Is Visible    ${sens}    15
    Click Element    ${sens}
    Swipe Rotina    ${slider}
    Wait Until Element Is Visible    ${salvar}
    Click Element    ${salvar} 
    Click Element    ${btn_salvar}
       
#Será refeito a lógica na manutenção do mesmo. 
E executo as ações da câmera BAT
   [Arguments]    ${swipe}    ${ligar1}    ${ligar2}    ${sensibilidade}    ${opt_sensi}    ${salvar}
   Wait Until Element Is Visible    ${ligar1}    15
   Click Element    ${ligar1}
   Wait Until Element Is Visible    ${ligar2}    15
   Click Element    ${ligar2}
   Wait Until Element Is Visible    ${sensibilidade}    15
   Click Element    ${sensibilidade}
   Swipe Rotina    ${swipe}
   Wait Until Element Is Visible    ${opt_sensi}    15
   Click Element                    ${opt_sensi}
   Click Element                    ${salvar}
   Click Element                    ${btn_salvar}
    
