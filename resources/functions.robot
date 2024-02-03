*** Settings ***

Resource    ../resources/base.robot

*** Variables ***
${medio}        Médio
${desligado}       Desligado

*** Keywords ***  
#Compativel com sensibilidade, temperatura e brilho. ROTINAS
Swipe Rotina
    Capture Page Screenshot
    [Arguments]    ${definir_condição}  
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Média'     #A23 Higor
    ...    Swipe    96    1957    536    1953
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Alto'     #A23 Higor
    ...    Swipe    96    1953    957    1957
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Baixo'     #A23 Higor
    ...    Swipe    0    0    0    0
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Média'    #A23 Diana
    ...    Swipe    133    2082    532    2082
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Alto'     #A23 Diana
    ...    Swipe    129    2097    994    2090
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Baixo'    #A23 Diana
    ...    Swipe    0    0    0    0 
    ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Média'    #A71 Sarah
    ...    Swipe    104    2042    533    2049
    ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Alto'     #A71 Sarah
    ...    Swipe    96    2045    1036    2042
    ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Baixo'    #A71 Sarah
    ...    Swipe    0    0    0    0 
    # ...    ELSE IF    ${altura} == 2232 and ${largura} == 1080    #HOT30 Higor
    # ...    Swipe    98    2019    532    2019
    # ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080    #A71 Sarah    
    # ...    Swipe    152    2056    544    2056
    # ...    ELSE IF    ${altura} == 2183 and ${largura} == 1080    #A71 Diana
    # ...    Swipe    109    1953    569    1946
    # ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080    #A13 Ale
    # ...    Swipe    172    1948    772    1952
    Capture Page Screenshot

#Compatível com Brilho de iluminaçao na tela principal
#Swipe Brilho dispositivo    

Swipe Brilho Modo Branco
    Capture Page Screenshot
    [Arguments]    ${definir_condição}  
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Maior50'    #A71 Sarah
    ...    Swipe    167    1892    808    1884
    ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Menor50'    #A71 Sarah
    ...    Swipe    827    1892    404    1888
    ...    ELSE IF    ${altura} == 2270 and ${largura} == 1080 and '${definir_condição}' == 'Igual100'     #A71 Sarah
    ...    Swipe    194    1880    1033    1884
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Maior50'    #A23 Diana-aprox 25%
    ...    Swipe    206    1910    777    1902
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Menor50'    #A23 Diana -aprox 75%
    ...    Swipe    176    1906    381    1902
    ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080 and '${definir_condição}' == 'Igual100'    #A23 Diana - 100%
    ...    Swipe    194    1902    1031    1906
    ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080 and '${definir_condição}' == 'Maior50'    #A13 Alessandra
    ...    Swipe    176    1807    658    1807
    ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080 and '${definir_condição}' == 'Menor50'    #A13 Alessandra
    ...    Swipe    172    1803    314    1807
    ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080 and '${definir_condição}' == 'Igual100'     #A13 Alessandra
    ...    Swipe    176    1807    1015    1807
    Capture Page Screenshot

Swipe Rotina - CAM BATERIA           
    Capture Page Screenshot
    [Arguments]    ${definir_condição}  
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Baixo CamBatv1'     #A23 Higor
    ...    Swipe    119    1402    169    1413
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Alto CamBatv1'     #A23 Higor
    ...    Swipe    111    1409    957    1409
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Médio CamBatv1'     #A23 Higor
    ...    Swipe    111    1409    540    1409
    


Swipe universal
    [Arguments]    ${definir_condição}
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Média'      #A23 - Higor
    ...    Swipe    98    1276    678    1268
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Desligado'
    ...    Swipe    689    1276    120    1276
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Baixo'
    ...    Swipe    94    1276    399    1276
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condição}' == 'Alto'
    ...    Swipe    94    1276    957    1272           


