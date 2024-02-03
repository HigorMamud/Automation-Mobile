*** Settings ***

Resource    ../resources/base.robot

*** Variables ***
${medio}        Médio
${desligado}       Desligado

*** Keywords ***  

# Dado que clico no botão
#     [Arguments]    ${definir_elemento}
#     ${altura}    Get Window Height
#     ${largura}   Get Window Width
#     ${start_x}    Evaluate    ${largura} * 0.5
#     ${start_y}    Evaluate    ${altura} * 0.4
#     ${end_x}      Evaluate    ${largura} * 0.5
#     ${end_y}      Evaluate    ${largura} * 0.2

#     FOR  ${i}    IN RANGE   20
#         ${elemento_presente}    Run Keyword And Return Status    
#         ...    Element Should Be Visible   ${definir_elemento}
#         IF    ${elemento_presente} == False
#             Swipe    ${start_x}    ${start_y}    ${end_x}    ${end_y}
#         ELSE
#             Click Element    ${definir_elemento}
#         END
       
#     Exit For Loop If    ${elemento_presente}
#     END

Dado que clico no botão
    [Arguments]    ${definir_elemento}
    ${altura}    Get Window Height
    ${largura}   Get Window Width
   
    FOR  ${i}    IN RANGE   10
    Run Keyword And Ignore Error    Wait Until Element Is Visible    ${definir_elemento}    10
    ${elemento_presente}    Run Keyword And Return Status    
    ...    Element Should Be Visible   ${definir_elemento}
 
        Run Keyword If    ${elemento_presente}
        ...    Click Element    ${definir_elemento}
 
            Run Keyword If    ${altura} == 1444 and ${largura} == 720    # Infinix A12 Diana
        ...    Swipe    356    1299    335    403
        ...    ELSE IF   ${altura} == 1515 and ${largura} == 720    # Motorola A11 Diana
        ...    Swipe    354    1378    343    416
        ...    ELSE IF   ${altura} == 2183 and ${largura} == 1080    # A71 A13 Diana
        ...    Swipe    519    2066    511    628
        ...    ELSE IF   ${altura} == 1920 and ${largura} == 1080    # GalaxyS7 A8 Diana
        ...    Swipe    515    1682    524    602
        ...    ELSE IF   ${altura} == 1776 and ${largura} == 1080    # Motorola A9 Diana
        ...    Swipe    540    1579    537    325
        ...    ELSE IF   ${altura} == 1405 and ${largura} == 720    # Q20 A10 Diana
        ...    Swipe    365    1283    363    418
        ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080    # A23 A13 Diana
        ...    Swipe    548    2039    528    575
        ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080    #A13 Ale
        ...    Swipe    544    1716    524    580
        ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080    #A23 Higor
        ...    Swipe    550    1361    517    434
 
    Exit For Loop If    ${elemento_presente}
    END


# Necessidade de testar se funciona com demais Smartphone devido ao swipe para atualizar, se necessário alterar o swipe para algo geral
Atualizar a tela
    [Arguments]    ${definir_elemento}
    ${altura}    Get Window Height
    ${largura}   Get Window Width
   
    FOR  ${i}    IN RANGE   10 
    ${elemento_presente}    Run Keyword And Return Status    
    ...    Element Should Be Visible   ${definir_elemento}

            Run Keyword If    ${altura} == 1444 and ${largura} == 720    # Infinix A12 Diana
        ...    Swipe    356    1299    335    403
        ...    ELSE IF   ${altura} == 1515 and ${largura} == 720    # Motorola A11 Diana
        ...    Swipe    354    1378    343    416
        ...    ELSE IF   ${altura} == 2183 and ${largura} == 1080    # A71 A13 Diana
        ...    Swipe    519    2066    511    628
        ...    ELSE IF   ${altura} == 1920 and ${largura} == 1080    # GalaxyS7 A8 Diana
        ...    Swipe    515    1682    524    602
        ...    ELSE IF   ${altura} == 1776 and ${largura} == 1080    # Motorola A9 Diana
        ...    Swipe    540    1579    537    325
        ...    ELSE IF   ${altura} == 1405 and ${largura} == 720    # Q20 A10 Diana
        ...    Swipe    365    1283    363    418
        ...    ELSE IF    ${altura} == 2342 and ${largura} == 1080    # A23 A13 Diana
        ...    Swipe    548    2039    528    575
        ...    ELSE IF    ${altura} == 2208 and ${largura} == 1080    # A13 Alessandra
        ...    Swipe    540    588    552    1804

    Exit For Loop If    ${elemento_presente}
    END




#Keywords para utilização de Swipes curtos sendo eles: hora, temperatura e velocidade.
Repetir hora e minuto
    [Arguments]     ${hora}    ${minuto}   
    Repeat Keyword    ${hora}    Swipes hora e minuto    hora
    Repeat Keyword    ${minuto}    Swipes hora e minuto    minuto
    Capture Page Screenshot

Repetir Maior, Igual e Menor
    [Arguments]    ${qtd1}    ${qtd2}    ${condicao1}    ${condicao2}
    Repeat Keyword    ${qtd1}    Maior - Igual - Menor    ${condicao1}
    Repeat Keyword    ${qtd2}    Temperatura              ${condicao2}   

Swipes hora e minuto
    [Arguments]    ${definir_condicao}  
    ${altura}    Get Window Height
    ${largura}   Get Window Width

    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'hora'
    ...    Swipe    266    2082    266    1997    
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'minuto'
    ...    Swipe    812    2077    815    1979
        


Maior - Igual - Menor
    [Arguments]    ${definir_condicao}
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'menor'
    ...    Swipe    437    1727    440    1842    
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'igual'
    ...    Swipe    0    0    0    0
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'maior'
    ...    Swipe    417    1969    414    1846

Temperatura
    [Arguments]    ${definir_condicao}
    ${altura}    Get Window Height
    ${largura}   Get Window Width
    Run Keyword If    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'negativa'
    ...    Swipe    666    1727    674    1846    
    ...    ELSE IF    ${altura} == 2207 and ${largura} == 1080 and '${definir_condicao}' == 'positiva'
    ...    Swipe    670    1965    674    1842