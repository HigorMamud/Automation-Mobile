*** Settings ***


Resource                               ../resources/base.robot


*** Variables ***


*** Keywords ***
################LAMPADA#############################
E realizo um novo agendamento
    [Arguments]    ${agendamento}    ${new_agen}    ${check1}    ${check2}
    Wait Until Element Is Visible      ${agendamento}    15
    Click Element                      ${agendamento}   
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_novo_agendamento}
    Wait Until Element Is Visible      ${check1}    15
    Wait Until Element Is Visible      ${check2}    15    


##############CÂMERA####################3
E clico em gravações
    Wait Until Element Is Visible    ${btn_gravacoes}
    Click Element    ${btn_gravacoes}
    Wait Until Element Is Visible    ${btn_config_sd}
    Click Element    ${btn_config_sd}
    Wait Until Element Is Visible    ${btn_agenda}
    Click Element    ${btn_agenda}     


Quando defino Ligar - Uma vez
    Click Element    ${checkbox_ligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}

Quando defino Ligar - Seg Qua Sex
    Click Element    ${checkbox_ligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_segunda}
    Click Element    ${checkbox_quarta}
    Click Element    ${checkbox_sexta}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}

Quando defino Ligar - Ter Qui
    Click Element    ${checkbox_ligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_terca}
    Click Element    ${checkbox_quinta}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}    

Quando defino Ligar - Dias da semana
    Click Element    ${checkbox_ligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Wait Until Element Is Visible    ${checkbox_dias_da_semana}    15
    Click Element    ${checkbox_dias_da_semana}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}
    
Quando defino Ligar - Todos os Dias
    Click Element    ${checkbox_ligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_todos_os_dias}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}        

Quando defino Desligar - Todos os Dias
    Click Element    ${checkbox_desligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_todos_os_dias}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}

Quando defino Desligar - Uma vez
    Click Element    ${checkbox_desligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}

Quando defino Desligar - Seg Qua Sex
    Click Element    ${checkbox_desligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_segunda}
    Click Element    ${checkbox_quarta}
    Click Element    ${checkbox_sexta}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar} 

Quando defino Desligar - Ter Qui
    Click Element    ${checkbox_desligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15   
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Click Element    ${checkbox_terca}
    Click Element    ${checkbox_quinta}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}       

Quando defino Desligar - Dias da semana
    Click Element    ${checkbox_desligar}
    ${time}    Get Current Date    result_format=%H:%M
    Wait Until Element Is Visible    accessibility_id=${time}    15
    Click Element    accessibility_id=${time}
    Swipe    266    2137    270    1855
    Click Element    ${btn_confirmar}
    Wait Until Element Is Visible    ${checkbox_dias_da_semana}    15
    Click Element    ${checkbox_dias_da_semana}
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}


Então o agendamento é criado
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Capture Page Screenshot    


####################AGENDAMENTO-ROBÔ########################
Quando realizo o agendamento - Repetir só uma vez - Ligar
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_ligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}

Quando realizo o agendamento - Repetir só uma vez - Desligar 
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_desligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${btn_salvar}     

Quando realizo o agendamento - Seg Qua Sex 
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_ligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_segunda}
    Click Element    ${checkbox_quarta}
    Click Element    ${checkbox_sexta}
    Click Element    ${btn_salvar}  


Quando realizo o agendamento - Seg Qua Sex - Desligar 
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_desligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_segunda}
    Click Element    ${checkbox_quarta}
    Click Element    ${checkbox_sexta}
    Click Element    ${btn_salvar}    

Quando realizo o agendamento - Ter Qui - Ligar
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_ligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_terca}
    Click Element    ${checkbox_quinta}
    Click Element    ${btn_salvar}    

Quando realizo o agendamento - Ter Qui - Desligar 
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_desligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_terca}
    Click Element    ${checkbox_quinta}
    Click Element    ${btn_salvar}    

Quando realizo o agendamento - Dias uteis da semana
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_ligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_dias_da_semana}
    Click Element    ${btn_salvar}

Quando realizo o agendamento - Dias uteis da semana - Desligar
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_desligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_dias_da_semana}
    Click Element    ${btn_salvar}

Quando realizo o agendamento - Todos os dias
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_ligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_todos_os_dias}
    Click Element    ${btn_salvar}


Quando realizo o agendamento - Todos os dias - Desligar
    Wait Until Element Is Visible    ${btn_agen_PROVISORIO}      15
    Click Element    ${btn_agen_PROVISORIO}
    Wait Until Element Is Visible    accessibility_id=Agendar    15
    Click Element    ${btn_novo_agendamento}
    Click Element    ${checkbox_desligar}
    Click Element    ${btn_hora_device}
    Swipe    266    2164    274    1773
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${checkbox_notif_execucao}    15
    Click Element    ${checkbox_notif_execucao}
    Click Element    ${checkbox_todos_os_dias}
    Click Element    ${btn_salvar}    

Seleção de dias
    [Arguments]    ${seg}    ${ter}    ${qua}    ${qui}    ${sex}
    Click Element    ${seg}
    Click Element    ${ter}
    Click Element    ${qua}
    Click Element    ${qui}
    Click Element    ${sex}    



Definir dias
    [Arguments]    ${condition}    ${ignorar}
    Run Keyword If    '${condition}' == 'Todos os Dias'
    ...    Click Element    ${checkbox_todos_os_dias}
    ...    ELSE IF    '${condition}' == 'Dias da semana'
    ...    Click Element    ${checkbox_dias_da_semana}    
    ...    ELSE IF    '${condition}' == 'Seg Qua Sex'
    ...    Seleção de dias    ${checkbox_segunda}    ${ignorar}    ${checkbox_quarta}    ${ignorar}    ${checkbox_sexta}            
    ...    ELSE IF    '${condition}' == 'Ter Qui'
    ...    Seleção de dias    ${ignorar}    ${checkbox_terca}    ${ignorar}    ${checkbox_quinta}    ${ignorar} 



Quando realizo o agendamento
    [Arguments]    ${btn_ag}    ${title}    ${new_agen}    ${checkbox_lig_desl}    ${hora}    ${repeat_1}    ${repeat_2}    
    ...    ${notificacao}    ${check_dias}    ${ignorar}
    Wait Until Element Is Visible    ${btn_ag}      15
    Click Element    ${btn_ag}
    Wait Until Element Is Visible    ${title}    15
    Wait Until Element Is Visible    ${new_agen}    15
    Click Element    ${new_agen}
    Wait Until Element Is Visible    ${checkbox_lig_desl}    15
    Click Element    ${checkbox_lig_desl}
    Wait Until Element Is Visible    ${hora}    15
    Click Element    ${hora}
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Swipe    270    1816    270    5000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[1]    15
    Sleep    1.5
    Swipe    812    1838    823    7000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[2]    15
    Repetir hora e minuto    ${repeat_1}    ${repeat_2}
    Wait Until Element Is Visible    ${btn_confirmar}    15     
    Click Element    ${btn_confirmar} 
    Wait Until Element Is Visible      ${notificacao}    15
    Click Element    ${notificacao}
    Definir dias    ${check_dias}    ${ignorar}
    Click Element    ${btn_salvar}



Circuitos - Uma vez
    Wait Until Element Is Visible    accessibility_id=Selecione, Selecione 0    15
    Click Element    accessibility_id=Selecione, Selecione 0




Circuitos Agenda
    [Arguments]    ${c1}    ${salvar1}    ${c2}    ${salvar2}    ${c3}    ${salvar3}
    Wait Until Element Is Visible    ${checkbox_uma_vez}    15
    Click Element    ${checkbox_uma_vez}
    Dado que clico no botão    ${c1}
    Wait Until Element Is Visible    ${salvar1}    15
    Click Element    ${salvar1}
    Dado que clico no botão    ${c2}
    Wait Until Element Is Visible    ${salvar2}    15
    Click Element    ${salvar2}
    Dado que clico no botão    ${c3}
    Wait Until Element Is Visible    ${salvar3}    15
    Click Element    ${salvar3}


    
    

Circuitos Aleatório-Tempo de Ciclo
    [Arguments]    ${c1}    ${c2}    ${c3}
    Dado que clico no botão    ${c1}
    Dado que clico no botão    ${c2}
    Dado que clico no botão    ${c3}
    # Wait Until Element Is Visible    ${c1}
    # Click Element    ${c1}
    # Wait Until Element Is Visible    ${c2}
    # Click Element    ${c2}
    # Wait Until Element Is Visible    ${c3}
    # Click Element    ${c3}

Selecionar Circuitos
    [Arguments]    ${acionar}
    Run Keyword If    '${acionar}' == 'Circuito 1'
    ...    Circuitos Aleatório-Tempo de Ciclo    ${interruptor_c1}    ${tempo_aleat_inter}    ${tempo_aleat_inter}
    ...    ELSE IF    '${acionar}' == 'Circuito 2'        
    ...    Circuitos Aleatório-Tempo de Ciclo    ${tempo_aleat_inter}    ${interruptor_c2}    ${tempo_aleat_inter}
    ...    ELSE IF    '${acionar}' == 'Circuito 3'
    ...    Circuitos Aleatório-Tempo de Ciclo    ${tempo_aleat_inter}    ${tempo_aleat_inter}    ${interruptor_c3}
    ...    ELSE IF    '${acionar}' == 'Circuito 1 2'
    ...    Circuitos Aleatório-Tempo de Ciclo    ${interruptor_c1}    ${interruptor_c2}    ${tempo_aleat_inter}
    ...    ELSE IF    '${acionar}' == 'Circuito 1 3'
    ...    Circuitos Aleatório-Tempo de Ciclo    ${interruptor_c1}    ${tempo_aleat_inter}    ${interruptor_c3}
    ...    ELSE IF    '${acionar}' == 'Todos'
    ...    Circuitos Aleatório-Tempo de Ciclo    ${interruptor_c1}    ${interruptor_c2}    ${interruptor_c3}
    ...    ELSE IF    '${acionar}' == 'Agenda C1'
    ...    Circuitos Agenda    ${interruptor_c1_ag}    ${btn_salvar}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    
    ...    ELSE IF    '${acionar}' == 'Agenda C2'
    ...    Circuitos Agenda    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${interruptor_c2_ag}    ${btn_salvar}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    
    ...    ELSE IF    '${acionar}' == 'Agenda C3'
    ...    Circuitos Agenda    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${interruptor_c3_ag}    ${btn_salvar}
    ...    ELSE IF    '${acionar}' == 'Agenda C1 C2'
    ...    Circuitos Agenda    ${interruptor_c1_ag}    ${btn_salvar}    ${interruptor_c2_ag}    ${btn_salvar}    ${btn_novo_agendamento}    ${btn_novo_agendamento}        
    ...    ELSE IF    '${acionar}' == 'Agenda C1 C3'
    ...    Circuitos Agenda    ${interruptor_c1_ag}    ${btn_salvar}    ${btn_novo_agendamento}    ${btn_novo_agendamento}    ${interruptor_c3_ag}    ${btn_salvar}
    ...    ELSE IF    '${acionar}' == 'Agenda Todos C'
    ...    Circuitos Agenda    ${interruptor_c1_ag}    ${btn_salvar}    ${interruptor_c2_ag}    ${btn_salvar}    ${interruptor_c3_ag}    ${btn_salvar}
        
 
           
Quando defino o horario de inicio e fim - Agendar
    [Arguments]    ${title}    ${hora}    ${repeat_1}    ${repeat_2}            
    Wait Until Element Is Visible    ${title}    15
    Click Element    ${title}
    
    Wait Until Element Is Visible    ${hora}    20
    Click Element    ${hora}
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Swipe    270    1816    270    5000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[1]    15
    Sleep    1.5
    Swipe    812    1838    823    7000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[2]    15
    Repetir hora e minuto    ${repeat_1}    ${repeat_2}
    Wait Until Element Is Visible    ${btn_confirmar}    15     
    Click Element    ${btn_confirmar}
    


Quando defino o horario de inicio e fim
    [Arguments]    ${title}    ${hora}    ${repeat_1}    ${repeat_2}    ${hora1}    ${repeat_3}    ${repeat_4}            
    Wait Until Element Is Visible    ${title}    15
    Click Element    ${title}
    
    Wait Until Element Is Visible    ${hora}    20
    Click Element    ${hora}
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Swipe    270    1816    270    5000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[1]    15
    Sleep    1.5
    Swipe    812    1838    823    7000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[2]    15
    Repetir hora e minuto    ${repeat_1}    ${repeat_2}
    Wait Until Element Is Visible    ${btn_confirmar}    15     
    Click Element    ${btn_confirmar}
    Wait Until Element Is Visible    ${hora1}    15
    Click Element    ${hora1}
    Wait Until Element Is Visible    ${btn_confirmar}    15
    Swipe    270    1816    270    5000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[1]    15
    Sleep    1.5
    Swipe    812    1838    823    7000
    Wait Until Element Is Visible    xpath=(//android.widget.SeekBar[@content-desc="00"])[2]    15
    Repetir hora e minuto    ${repeat_3}    ${repeat_4}
    Wait Until Element Is Visible    ${btn_confirmar}    15     
    Click Element    ${btn_confirmar}     
    
E defino os dias e ações
    [Arguments]    ${notificacao}    ${check_dias}    ${todos_uma_vez}    ${circuitos}    ${ignora}
    Wait Until Element Is Visible      ${notificacao}    15
    Click Element    ${notificacao}
    Definir dias    ${check_dias}    ${ignora}
    Wait Until Element Is Visible    ${todos_uma_vez}    15
    Click Element    ${todos_uma_vez}
    Selecionar Circuitos    ${circuitos}
    Wait Until Element Is Visible    ${btn_salvar}    15        
    Click Element    ${btn_salvar}
    


Então o agendamento é criado com sucesso
    Wait Until Element Is Visible    ${titulo_agendar}    15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=(//android.widget.ImageView[@content-desc="Uma vez\nLigar" or @content-desc="Uma vez\nDesligar" or @content-desc="Segunda, Quarta e Sexta\nLigar" or @content-desc="Segunda, Quarta e Sexta\nDesligar" or @content-desc="Terça e Quinta\nLigar" or @content-desc="Terça e Quinta\nDesligar" or @content-desc="Dias da semana\nLigar" or @content-desc="Dias da semana\nDesligar" or @content-desc="Todos os dias\nLigar" or @content-desc="Todos os dias\nDesligar"])    15
    Capture Page Screenshot

Então o agendamento do Interruptor é criado com sucesso
    # [Arguments]    ${agendamento}
    Wait Until Element Is Visible    ${titulo_agendar}    15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc, "Circuito 1") or contains(@content-desc, "Circuito 2") or contains(@content-desc, "Circuito 3")]    15
    Capture Page Screenshot

Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=(//android.widget.ImageView[@content-desc="Uma vez\nDesligar"])[1]    15
    Capture Page Screenshot    

Então o agendamento é realizado com sucesso - Seg Qua Sex
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Segunda, Quarta e Sexta\nLigar"]    15      
    Capture Page Screenshot
   

Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Segunda, Quarta e Sexta\nDesligar"]    15            
    Capture Page Screenshot        

Então o agendamento é realizado com sucesso - Dias uteis da semana
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Dias da semana\nLigar"]    15    
    Capture Page Screenshot

Então o agendamento é realizado com sucesso - Ter Qui
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Terça e Quinta\nLigar"]    15           
    Capture Page Screenshot   

Então o agendamento é realizado com sucesso - Ter Qui - Desligar
    Wait Until Element Is Visible    ${titulo_agendar}          15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Swipe    548    1877    540    624
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Terça e Quinta\nDesligar"]    15            
    Capture Page Screenshot  

Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar
    Wait Until Element Is Visible    ${titulo_agendar}          15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Swipe    548    1877    540    624
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Dias da semana\nDesligar"]    15    
    Capture Page Screenshot    

Então o agendamento é realizado com sucesso - Todos os dias
    Wait Until Element Is Visible    ${titulo_agendar}          15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Swipe    548    1877    540    624
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Todos os dias\nLigar"]    15    
    Capture Page Screenshot  

Então o agendamento é realizado com sucesso - Todos os dias - Desligar
    Wait Until Element Is Visible    ${titulo_agendar}          15
    Wait Until Element Is Visible    ${btn_novo_agendamento}    15
    Swipe    548    1877    540    624
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Swipe    553    1979    527    242
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[@content-desc="Todos os dias\nDesligar"]    15      
    Capture Page Screenshot      




    ###########################################################################################################
    #########################################EXCLUIR-AGENDAMENTO###############################################
    ###########################################################################################################

E clico no calendário 
    Click Element    ${btn_agen_PROVISORIO}

E mantenho o botão do agendamento pressionado
    Wait Until Element Is Visible    ${btn_novo_agendamento}           15
    Wait Until Element Is Visible    ${manter_press_ag1}               15
    Run Keyword And Ignore Error    Long Press	${manter_press_ag1}    3
    Run Keyword And Ignore Error    Long Press	${manter_press_ag}     3    

E mantenho o agendamento pressionado - Um vez - Ligar
    Wait Until Element Is Visible    ${btn_novo_agendamento}           15
    Wait Until Element Is Visible    ${manter_press_ag1}               15
    Run Keyword And Ignore Error    Long Press	${manter_press_ag1}    3
    Run Keyword And Ignore Error    Long Press	${manter_press_ag}     3
    Capture Page Screenshot

Quando confirmo a exclusão    
    Wait Until Element Is Visible    ${btn_confirmar}    10
    Click Element                    ${btn_confirmar}

Então o Agendamento é removido com sucesso
    Wait Until Element Is Visible    accessibility_id=Agendamento removido com sucesso!    10    
    Capture Page Screenshot




#####################################AGENDAMENTO INTERRUPTOR##########################################
E realizo um novo agendamento - Interruptor
    Wait Until Element Is Visible      ${btn_agen_PROVISORIO}     15
    Click Element                      ${btn_agen_PROVISORIO}   
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_novo_agendamento}
    Wait Until Element Is Visible      ${agenda_interruptor}
    Click Element                      ${agenda_interruptor}

E realizo um novo agendamento - Tempo de ciclo
    Wait Until Element Is Visible      ${btn_agen_PROVISORIO}     15
    Click Element                      ${btn_agen_PROVISORIO}   
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_novo_agendamento}
    Wait Until Element Is Visible      ${tempo_ciclo_inter}       15   
    Click Element                      ${tempo_ciclo_inter}

E realizo um novo agendamento - Aleatório
    Wait Until Element Is Visible      ${btn_agen_PROVISORIO}     15
    Click Element                      ${btn_agen_PROVISORIO}   
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_novo_agendamento}
    Wait Until Element Is Visible      ${tempo_aleat_inter}       15   
    Click Element                      ${tempo_aleat_inter}    

###AGENDAR
Quando defino Ligar - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Desligar - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    

Quando defino Ligar - Seg Qua Sex - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Click Element                      ${checkbox_todos}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Desligar - Seg Qua Sex - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Click Element                      ${checkbox_todos}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Ligar - Ter Qui - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Click Element                      ${checkbox_todos}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Desligar - Ter Qui - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Click Element                      ${checkbox_todos}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Ligar - Dias da semana - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_dias_da_semana}
    Click Element                      ${checkbox_todos}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Desligar - Dias da semana - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_dias_da_semana}
    Click Element                      ${checkbox_todos}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar} 

Quando defino Ligar - Todos os dias - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos_os_dias}
    Click Element                      ${checkbox_todos}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Desligar - Todos os dias - Todos
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos_os_dias}
    Click Element                      ${checkbox_todos}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    



####Circuito
Quando defino C1 Ligar C2 Desligar - Uma vez
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino C1 Desligar C3 Ligar - Uma vez
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Swipe    517    2003    524    884
    Click Element                      ${checkbox_circuito2}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}  

Quando defino C2 Ligar C3 Desligar - Uma vez
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_uma_vez}
    Swipe    525    1988    521    1769
    Capture Page Screenshot
    Click Element                      ${checkbox_circuito2} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito2}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}     


Quando defino C1 Ligar C2 Desligar - Seg Qua Sex
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino C1 Desligar C3 Ligar - Seg Qua Sex
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Swipe    551    1984    551    249
    Click Element                      ${checkbox_circuito2}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}  

Quando defino C2 Ligar C3 Desligar - Seg Qua Sex
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Click Element                      ${checkbox_uma_vez}
    Swipe    525    1988    521    1769
    Capture Page Screenshot
    Click Element                      ${checkbox_circuito2} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito2}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}



Quando defino C1 Ligar C2 Desligar - Ter Qui
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino C1 Desligar C3 Ligar - Ter Qui
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Swipe    551    1984    551    249
    Click Element                      ${checkbox_circuito2}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}  

Quando defino C2 Ligar C3 Desligar - Ter Qui
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Click Element                      ${checkbox_uma_vez}
    Swipe    525    1988    521    1769
    Capture Page Screenshot
    Click Element                      ${checkbox_circuito2} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito2}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}



Quando defino C1 Ligar C2 Desligar - Dias da semana
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_dias_da_semana}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino C1 Desligar C3 Ligar - Dias da semana
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_dias_da_semana}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Swipe    517    2003    524    884
    Click Element                      ${checkbox_circuito2}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}  

Quando defino C2 Ligar C3 Desligar - Dias da semana
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_dias_da_semana}
    Click Element                      ${checkbox_uma_vez}
    Swipe    525    1988    521    1769
    Capture Page Screenshot
    Click Element                      ${checkbox_circuito2} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito2}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}



Quando defino C1 Ligar C2 Desligar - Todos os dias
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos_os_dias}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino C1 Desligar C3 Ligar - Todos os dias
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos_os_dias}
    Click Element                      ${checkbox_uma_vez}
    Click Element                      ${checkbox_circuito1}
    Swipe    532    2110    555    1042 
    Click Element                      ${btn_salvar}
    Swipe    517    2003    524    884
    Click Element                      ${checkbox_circuito2}
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}  

Quando defino C2 Ligar C3 Desligar - Todos os dias
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_notif_execucao}
    Click Element                      ${checkbox_todos_os_dias}
    Click Element                      ${checkbox_uma_vez}
    Swipe    525    1988    521    1769
    Capture Page Screenshot
    Click Element                      ${checkbox_circuito2} 
    Click Element                      ${btn_salvar}
    Click Element                      ${checkbox_circuito2}
    Swipe    532    2110    555    1042
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}



######TEMPO DE CICLO
Quando defino Tempo de ciclo - Uma vez - C1 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1900  #2 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Uma vez - C2 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1800   #3 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1700  #4 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Uma vez - C3 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1600   #5 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1500  #6 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


Quando defino Tempo de ciclo - Uma vez - C1 e C2 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1400   #7 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1300   #8 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Uma vez - C1, C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1200   #9 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1100   #10 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Uma vez - C1 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1000   #11 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    900   #12 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


Quando defino Tempo de ciclo - Uma vez - C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1605
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    800   #13 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    700    #14 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


#SEG QUA SEX
Quando defino Tempo de ciclo - Seg Qua Sex - C1 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1900  #2 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Seg Qua Sex - C2 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1800   #3 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1700  #4 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Seg Qua Sex - C3 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1845
    Click Element                      ${btn_confirmar}
    Capture Page Screenshot
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1600   #5 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1500  #6 Minutos
    Click Element                      ${btn_salvar}
    Capture Page Screenshot
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Seg Qua Sex - C1 e C2 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1400   #7 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1300   #8 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


Quando defino Tempo de ciclo - Seg Qua Sex - C1, C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1200   #9 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1100   #10 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    

Quando defino Tempo de ciclo - Seg Qua Sex - C1 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1000   #11 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    900   #12 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}
    
Quando defino Tempo de ciclo - Seg Qua Sex - C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1605
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_segunda}    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    800   #13 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    700    #14 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

#TER QUI
Quando defino Tempo de ciclo - Ter Qui - C1 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1900  #2 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Ter Qui - C2 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1800   #3 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1700  #4 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Ter Qui - C3 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1845
    Click Element                      ${btn_confirmar}
    Capture Page Screenshot
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1600   #5 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1500  #6 Minutos
    Click Element                      ${btn_salvar}
    Capture Page Screenshot
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Ter Qui - C1 e C2 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
   Wait Until Element Is Visible       ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1400   #7 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1300   #8 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Ter Qui - C1, C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1200   #9 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1100   #10 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    

Quando defino Tempo de ciclo - Ter Qui - C1 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1000   #11 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    900   #12 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Ter Qui - C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1605
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_terca}    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    800   #13 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    700    #14 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


##Todos os dias
Quando defino Tempo de ciclo - Todos os dias - C1 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1900  #2 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Todos os dias - C2 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1800   #3 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1700  #4 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Todos os dias - C3 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1845
    Click Element                      ${btn_confirmar}
    Capture Page Screenshot
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1600   #5 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1500  #6 Minutos
    Click Element                      ${btn_salvar}
    Capture Page Screenshot
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Todos os dias - C1 e C2 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1400   #7 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1300   #8 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Todos os dias - C1, C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1200   #9 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1100   #10 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    

Quando defino Tempo de ciclo - Todos os dias - C1 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1000   #11 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    900   #12 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Todos os dias - C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1605
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    800   #13 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    700    #14 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}


##Dias da semana
Quando defino Tempo de ciclo - Dias da semana - C1 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1900  #2 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Dias da semana - C2 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1800   #3 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1700  #4 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Dias da semana - C3 selecionado
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1845
    Click Element                      ${btn_confirmar}
    Capture Page Screenshot
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3  
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1600   #5 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1500  #6 Minutos
    Click Element                      ${btn_salvar}
    Capture Page Screenshot
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Dias da semana - C1 e C2 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1400   #7 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1300   #8 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Dias da semana - C1, C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1745
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1200   #9 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1100   #10 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}    

Quando defino Tempo de ciclo - Dias da semana - C1 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    1000   #11 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    900   #12 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}

Quando defino Tempo de ciclo - Dias da semana - C2 e C3 selecionados
    Wait Until Element Is Visible      accessibility_id=Tempo de ciclo    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1855
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1605
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2  
    Click Element                      accessibility_id=Circuito 3
    Swipe    544    1907    578    333
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    800   #13 Minutos
    Click Element                      ${btn_salvar}
    Click Element    xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
    Swipe    656    2105    657    700    #14 Minutos
    Click Element                      ${btn_salvar}
    Click Element                      ${btn_salvar}



######ALEATÓRIO
#Uma vez
Quando defino Aleatório - Uma vez - C1
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Uma vez - C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Uma vez - C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Uma vez - C1 e C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Uma vez - C1, C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Uma vez - C1 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Uma vez - C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1455
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}


#Aleatório - SEG QUA SEX
Quando defino Aleatório - Seg Qua Sex - C1
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Swipe    808    1811    804    2244
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Seg Qua Sex - C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Seg Qua Sex - C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Seg Qua Sex - C1 e C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Seg Qua Sex - C1, C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Seg Qua Sex - C1 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Seg Qua Sex - C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_segunda}
    Click Element                      ${checkbox_quarta}
    Click Element                      ${checkbox_sexta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

#Aleatório TER QUI
Quando defino Aleatório - Ter Qui - C1
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Swipe    808    1811    804    2244
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Ter Qui - C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Ter Qui - C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Ter Qui - C1 e C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Ter Qui - C1, C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Ter Qui - C1 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Ter Qui - C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${checkbox_terca}
    Click Element                      ${checkbox_quinta}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

#Aleatório TODOS OS DIAS
Quando defino Aleatório - Todos os dias - C1
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Swipe    808    1811    804    2244
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Todos os dias - C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Todos os dias - C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Todos os dias - C1 e C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Todos os dias - C1, C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Todos os dias - C1 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Todos os dias - C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1455
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

#Aleatório Dias da Semana
Quando defino Aleatório - Dias da semana - C1
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    266    1925    266    2100
    Swipe    808    1811    804    2244
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    266    1925    266    2100
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Dias da semana - C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Dias da semana - C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266    1945
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      accessibility_id=Circuito 3     15
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Dias da semana - C1 e C2
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1845
    Capture Page Screenshot
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1845
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Dias da semana - C1, C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1645
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}

Quando defino Aleatório - Dias da semana - C1 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device1}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    270    2074    266	 1545
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_dias_da_semana}    15
    Click Element                      ${checkbox_dias_da_semana}
    Wait Until Element Is Visible      xpath=//android.view.View[@content-desc="Circuito "]     15
    Click Element                      xpath=//android.view.View[@content-desc="Circuito "]
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}    

Quando defino Aleatório - Dias da semana - C2 e C3
    Wait Until Element Is Visible      accessibility_id=Aleatório    15
    Click Element                      ${btn_hora_device}
    Swipe    266    2137    270    1455
    Click Element                      ${btn_confirmar}
    Click Element                      ${btn_hora_device}
    Swipe    272    2087    276    1455
    Click Element                      ${btn_confirmar}
    Wait Until Element Is Visible      ${checkbox_todos_os_dias}    15
    Click Element                      ${checkbox_todos_os_dias}
    Wait Until Element Is Visible      accessibility_id=Circuito 2     15
    Click Element                      accessibility_id=Circuito 2
    Click Element                      accessibility_id=Circuito 3
    Click Element                      ${btn_salvar}


####Aleatório
#Uma vez
Então o agendamento do Interruptor Aleatório - Uma vez C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito "]    15

Então o agendamento do Interruptor Aleatório - Uma vez C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Uma vez C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Uma vez C1, C2 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 2"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Uma vez C1 e C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Uma vez C1 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nUma vez\nCircuito 3"]    15    

#Seg Qua Sex
Então o agendamento do Interruptor Aleatório - Seg Qua Sex C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito "]    15

Então o agendamento do Interruptor Aleatório - Seg Qua Sex C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Seg Qua Sex C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Seg Qua Sex C1, C2 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 2"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Seg Qua Sex C1 e C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Seg Qua Sex C1 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSegunda, Quarta e Sexta\nCircuito 3"]    15

#Aleatório TER QUI
Então o agendamento do Interruptor Aleatório - Ter Qui C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nSTerça e Quinta\nCircuito "]    15

Então o agendamento do Interruptor Aleatório - Ter Qui C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Ter Qui C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Ter Qui C1, C2 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 2"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Ter Qui C1 e C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Ter Qui C1 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTerça e Quinta\nCircuito 3"]    15

#Aleatório Todos os dias
Então o agendamento do Interruptor Aleatório - Todos os dias C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito "]    15

Então o agendamento do Interruptor Aleatório - Todos os dias C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Todos os dias C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Todos os dias C1, C2 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 2"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Todos os dias C1 e C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Todos os dias C1 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nTodos os dias\nCircuito 3"]    15

#Aleatório Dias da semana
Então o agendamento do Interruptor Aleatório - Dias da semana C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito "]    15

Então o agendamento do Interruptor Aleatório - Dias da semana C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Dias da semana C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Dias da semana C1, C2 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 2"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 3"]    15

Então o agendamento do Interruptor Aleatório - Dias da semana C1 e C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 2"]    15

Então o agendamento do Interruptor Aleatório - Dias da semana C1 e C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito "]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Aleatório\nDias da semana\nCircuito 3"]    15


#Tempo de ciclo
#Uma vez
Então o agendamento do Interruptor Tempo de ciclo - Uma vez C1 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito \nDuração: 00:01h | Desligar em: 00:02h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C2 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 2\nDuração: 00:03h | Desligar em: 00:04h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C3 é criado com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 3\nDuração: 00:05h | Desligar em: 00:06h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C1 e C2 são criados com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito \nDuração: 00:07h | Desligar em: 00:08h"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 2\nDuração: 00:07h | Desligar em: 00:08h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C1, C2 e C3 são criados com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    485    1988    544    333
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito \nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 2\nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 3\nDuração: 00:09h | Desligar em: 00:10h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C1 e C3 são criados com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    485    1988    544    333
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito \nDuração: 00:11h | Desligar em: 00:12h"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 3\nDuração: 00:11h | Desligar em: 00:12h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Uma vez C2 e C3 são criados com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 2\nDuração: 00:13h | Desligar em: 00:14h"]    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Ciclo\nUma vez\nCircuito 3\nDuração: 00:13h | Desligar em: 00:14h"]    15


#SEG QUA SEX
Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C1 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito \nDuração: 00:01h | Desligar em: 00:02h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C2 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 2\nDuração: 00:03h | Desligar em: 00:04h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C3 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 3\nDuração: 00:05h | Desligar em: 00:06h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C1 e C2 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito \nDuração: 00:07h | Desligar em: 00:08h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 2\nDuração: 00:07h | Desligar em: 00:08h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C1, C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito \nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 2\nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 3\nDuração: 00:09h | Desligar em: 00:10h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C1 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito \nDuração: 00:11h | Desligar em: 00:12h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 3\nDuração: 00:11h | Desligar em: 00:12h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Seg Qua Sex - C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 2\nDuração: 00:13h | Desligar em: 00:14h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nSegunda, Quarta e Sexta\nCircuito 3\nDuração: 00:13h | Desligar em: 00:14h"]    15


#TER QUI
Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C1 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito \nDuração: 00:01h | Desligar em: 00:02h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C2 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 2\nDuração: 00:03h | Desligar em: 00:04h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C3 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 3\nDuração: 00:05h | Desligar em: 00:06h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C1 e C2 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito \nDuração: 00:07h | Desligar em: 00:08h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 2\nDuração: 00:07h | Desligar em: 00:08h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C1, C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito \nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 2\nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 3\nDuração: 00:09h | Desligar em: 00:10h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C1 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito \nDuração: 00:11h | Desligar em: 00:12h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 3\nDuração: 00:11h | Desligar em: 00:12h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Ter Qui - C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 2\nDuração: 00:13h | Desligar em: 00:14h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTerça e Quinta\nCircuito 3\nDuração: 00:13h | Desligar em: 00:14h"]    15


#Todos os dias
Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C1 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito \nDuração: 00:01h | Desligar em: 00:02h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C2 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 2\nDuração: 00:03h | Desligar em: 00:04h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C3 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 3\nDuração: 00:05h | Desligar em: 00:06h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C1 e C2 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito \nDuração: 00:07h | Desligar em: 00:08h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 2\nDuração: 00:07h | Desligar em: 00:08h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C1, C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito \nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 2\nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 3\nDuração: 00:09h | Desligar em: 00:10h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C1 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito \nDuração: 00:11h | Desligar em: 00:12h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 3\nDuração: 00:11h | Desligar em: 00:12h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Todos os dias - C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 2\nDuração: 00:13h | Desligar em: 00:14h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nTodos os dias\nCircuito 3\nDuração: 00:13h | Desligar em: 00:14h"]    15


##Dias da semana
Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C1 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito \nDuração: 00:01h | Desligar em: 00:02h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C2 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 2\nDuração: 00:03h | Desligar em: 00:04h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C3 é criado com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 3\nDuração: 00:05h | Desligar em: 00:06h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C1 e C2 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito \nDuração: 00:07h | Desligar em: 00:08h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 2\nDuração: 00:07h | Desligar em: 00:08h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C1, C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito \nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 2\nDuração: 00:09h | Desligar em: 00:10h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 3\nDuração: 00:09h | Desligar em: 00:10h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C1 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito \nDuração: 00:11h | Desligar em: 00:12h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 3\nDuração: 00:11h | Desligar em: 00:12h"]    15

Então o agendamento do Interruptor Tempo de ciclo - Dias da semana - C2 e C3 são criados com sucesso
    Wait Until Element Is Visible     ${btn_novo_agendamento}     15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 2\nDuração: 00:13h | Desligar em: 00:14h"]    15
    Wait Until Element Is Visible     xpath=//android.widget.ImageView[@content-desc="Ciclo\nDias da semana\nCircuito 3\nDuração: 00:13h | Desligar em: 00:14h"]    15







Então o agendamento do Interruptor C1 Ligar e C2 Desligar Uma vez é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=(//android.widget.ImageView[@content-desc="Comum\nUma vez\nCircuito : Ligar, Circuito 2: Desligar"])     15  

Então o agendamento do Interruptor C1 Desligar e C3 Ligar Uma vez é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Comum\nUma vez\nCircuito : Desligar, Circuito 3: Ligar"]     15  

Então o agendamento do Interruptor C2 Ligar C3 Desligar Uma vez é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      xpath=//android.widget.ImageView[@content-desc="Comum\nUma vez\nCircuito 2: Ligar, Circuito 3: Desligar"]     15  

######SEGUNDA - QUARTA - SEXTA
Então o agendamento do Interruptor C1 Ligar e C2 Desligar Seg Qua Sex é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      accessibility_id=Comum\nSegunda, Quarta e Sexta\nCircuito : Ligar, Circuito 2: Desligar     15  

Então o agendamento do Interruptor C1 Desligar e C3 Ligar Seg Qua Sex é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      accessibility_id=Comum\nSegunda, Quarta e Sexta\nCircuito : Desligar, Circuito 3: Ligar     15  

Então o agendamento do Interruptor C2 Ligar C3 Desligar Seg Qua Sex é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Wait Until Element Is Visible      accessibility_id=Comum\nSegunda, Quarta e Sexta\nCircuito 2: Ligar, Circuito 3: Desligar     15         

#####TERÇA - QUINTA
Então o agendamento do Interruptor C1 Ligar e C2 Desligar Ter Qui é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTerça e Quinta\nCircuito : Ligar, Circuito 2: Desligar     15  

Então o agendamento do Interruptor C1 Desligar e C3 Ligar Ter Qui é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTerça e Quinta\nCircuito : Desligar, Circuito 3: Ligar     15  

Então o agendamento do Interruptor C2 Ligar C3 Desligar Ter Qui é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTerça e Quinta\nCircuito 2: Ligar, Circuito 3: Desligar     15

#####DIAS DA SEMANA
Então o agendamento do Interruptor C1 Ligar e C2 Desligar Dias da semana é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nDias da semana\nCircuito : Ligar, Circuito 2: Desligar     15  

Então o agendamento do Interruptor C1 Desligar e C3 Ligar Dias da semana é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nDias da semana\nCircuito : Desligar, Circuito 3: Ligar     15  

Então o agendamento do Interruptor C2 Ligar C3 Desligar Dias da semana é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nDias da semana\nCircuito 2: Ligar, Circuito 3: Desligar     15

######TODOS OS DIAS
Então o agendamento do Interruptor C1 Ligar e C2 Desligar Todos os dias é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTodos os dias\nCircuito : Ligar, Circuito 2: Desligar     15  

Então o agendamento do Interruptor C1 Desligar e C3 Ligar Todos os dias é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTodos os dias\nCircuito : Desligar, Circuito 3: Ligar     15  

Então o agendamento do Interruptor C2 Ligar C3 Desligar Todos os dias é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTodos os dias\nCircuito 2: Ligar, Circuito 3: Desligar     15

#####TODOS
Então o agendamento do Interruptor Ligar - Uma vez é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nUma vez\nTodos: Ligar     15

Então o agendamento do Interruptor Desligar - Uma vez é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nUma vez\nTodos: Desligar     15

Então o agendamento do Interruptor Ligar - Seg Qua Sex é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nSegunda, Quarta e Sexta\nTodos: Ligar     15

Então o agendamento do Interruptor Desligar - Seg Qua Sex é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nSegunda, Quarta e Sexta\nTodos: Desligar     15

Então o agendamento do Interruptor Ligar - Ter Qui - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTerça e Quinta\nTodos: Ligar     15

Então o agendamento do Interruptor Desligar - Ter Qui - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTerça e Quinta\nTodos: Desligar     15

Então o agendamento do Interruptor Ligar - Dias da semana - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nDias da semana\nTodos: Ligar     15   

Então o agendamento do Interruptor Desligar - Dias da semana - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nDias da semana\nTodos: Desligar     15 

Então o agendamento do Interruptor Ligar - Todos os dias - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTodos os dias\nTodos: Ligar     15   

Então o agendamento do Interruptor Desligar - Todos os dias - Todos é salvo com sucesso
    Wait Until Element Is Visible      ${btn_novo_agendamento}    15
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Swipe    536    1830    500    348
    Wait Until Element Is Visible      accessibility_id=Comum\nTodos os dias\nTodos: Desligar     15                            






    