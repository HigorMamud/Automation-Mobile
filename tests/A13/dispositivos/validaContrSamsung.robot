*** Settings ***

Documentation    Controle Remoto Samsung

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Validando teclas dos 66 controles - SAMSUNG
    Dado que clico no botão    ${device_controle}
    E adiciono o controle    ${add_controleR}    ${title_controle}    ${device_tv}    ${textbox_controleR}    Samsung    ${samsung}
    FOR  ${counter}  IN RANGE    1    66
    Quando valido os elementos dos botões do controleR    
    ...    ${home_controle}    ${tv_OnOff}    ${btn_menu_control}    ${btn_mudo}    ${canal_mais}    ${canal_menos}    ${volume_mais}    ${volume_menos}    
    ...    ${btn_voltar_controle}    ${btn_cima_tv}    ${btn_baixo_tv}    ${btn_esquerda_tv}    ${btn_direita_tv}    ${btn_ok_tv}
    Click Element    ${btn_proximo}
    END