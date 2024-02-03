*** Settings ***

Resource                               ../../resources/base.robot     

*** Variables ***
${zero_rotina}       xpath=//android.widget.ImageView[contains(@content-desc, "Esta é a área de rotinas!")]
                    
${automacao_cena}    xpath=//android.widget.ImageView[contains(@content-desc, "Automação") or contains(@content-desc, "Cena")]

*** Keywords ***
E seleciono a rotina que desejo deletar
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc, "Automação") or contains(@content-desc, "Cena")]    15
    Click Element    xpath=//android.widget.ImageView[contains(@content-desc, "Automação") or contains(@content-desc, "Cena")]





E excluo a cena do teste
    Sleep    2
    Wait Until Element Is Visible    ${ignora_rotina}    15
    Wait Until Element Is Visible    xpath=//android.widget.ImageView[contains(@content-desc, "Automação") or contains(@content-desc, "Cena")]    15
    Click Element    xpath=//android.widget.ImageView[contains(@content-desc, "Automação") or contains(@content-desc, "Cena")]
    Dado que clico no botão            ${btn_excluir_rotina}                      
    Wait Until Element Is Visible      ${btn_confirmar}    15
    Click Element                      ${btn_confirmar}

Então sou direcionado para tela de rotinas
    Wait Until Element Is Visible      ${tela_rotinas}    20
    Capture Page Screenshot            10   



