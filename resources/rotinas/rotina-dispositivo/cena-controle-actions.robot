*** Settings ***


Resource                               ../../../resources/base.robot


*** Keywords ***

#Controle TV Samsung
#Controle TVBOX marca Huawei

E entro na funções do controle
    Sleep    3
    Wait Until Element Is Visible     ${controle_funcoes}    15
    Click Element                     ${controle_funcoes}

E seleciono os botões do controle
    [Arguments]                       ${botao1}    ${botao2}    ${botao3}    ${botao4}    ${botao5}    ${botao6}    ${botao7}    ${botao8}    ${botao9}    ${botao10}    ${botao11}    ${botao12}    ${botao13}
    Wait Until Element Is Visible     ${botao1}    15
    Click Element                     ${botao1}      
    Click Element                     ${botao2}
    Click Element                     ${botao3}
    Click Element                     ${botao4}
    Click Element                     ${botao5}
    Click Element                     ${botao6}
    Click Element                     ${botao7}
    Click Element                     ${botao8}
    Click Element                     ${botao9}
    Click Element                     ${botao10}
    Click Element                     ${botao11}
    Click Element                     ${botao12}
    Click Element                     ${botao13}
    Click Element                     ${btn_salvar}

E seleciono o intervalo de 5s
    Wait Until Element Is Visible     ${intervalo}    15
    Click Element                     ${intervalo}
    Swipe                             536    2110    506    1639
    Click Element                     ${btn_salvar}

E salvo a lista de funções e intervalos
    Wait Until Element Is Visible     ${btn_salvar}    15
    Click Element                     ${btn_salvar}


