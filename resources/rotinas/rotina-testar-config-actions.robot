*** Settings ***


Resource              ../../resources/base.robot


*** Variables ***


*** Keywords ***

Então clico em Testar Configurações
    Click Element    accessibility_id=Testar configurações
    Wait Until Element Is Visible    accessibility_id=Testar configurações executado com sucesso    15
    Click Element    ${btn_voltar}
    Wait Until Element Is Visible    ${btn_sair}    15
    Click Element    ${btn_sair}
    Wait Until Element Is Visible    ${btn_nova_rotina}    15
    Click Element    ${btn_nova_rotina}
    
