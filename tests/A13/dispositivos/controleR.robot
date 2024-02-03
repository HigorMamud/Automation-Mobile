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
    




Criando controle remoto Samsung
    FOR  ${count}    IN RANGE    1    64    8
    Dado que clico no botão    ${device_controle}
    E adiciono o controle    ${add_controleR}    ${title_controle}    ${device_tv}    ${textbox_controleR}    Samsung    ${samsung}
    Wait Until Element Is Visible    ${btn_proximo}    30
    FOR  ${counter}  IN RANGE    1    66
    ${element_init}    Run Keyword And Return Status
    ...    Element Should Be Visible    accessibility_id=Selecione se o layout parece com o seu controle (${count}/66)
    
        Run Keyword If    ${element_init}
        ...    Log    Já esta na posição correta
        ...    ELSE
        ...    Clicar no botão próximo
        # ...    Click Element    ${btn_proximo}   
    Capture Page Screenshot
    Exit For Loop If    ${element_init}
    END
    Quando valido os elementos dos botões do controleR    
    ...    ${home_controle}    ${tv_OnOff}    ${menu}    ${btn_mudo}    ${canal_mais}    ${canal_menos}    ${volume_mais}    ${volume_menos}    
    ...    ${btn_voltar_controle}    ${btn_cima_tv}    ${btn_baixo_tv}    ${btn_esquerda_tv}    ${btn_direita_tv}    ${btn_ok_tv}
    Capture Page Screenshot
    E salvo a criação do controle    ${device_control_tv}               
    END

Removendo controles
    FOR    ${i}     IN RANGE    1    9

    Então excluo o mesmo em seguida

    END


