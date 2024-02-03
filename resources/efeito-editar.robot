*** Settings ***


Resource                               ../resources/base.robot


*** Variables ***


*** Keywords ***
Dado que entro em lãmpada
    Wait Until Element Is Visible    accessibility_id=Smart Lâmpada WiFi RGB+    20
    Click Element    accessibility_id=Smart Lâmpada WiFi RGB+
    Wait Until Element Is Visible    accessibility_id=Efeitos    20
    Click Element    accessibility_id=Efeitos
    Click Element    accessibility_id=Editar efeito    
    Click Element    accessibility_id=Cores\nModo\nEstático
    Wait Until Element Is Visible    accessibility_id=Piscar    20
    Click Element    accessibility_id=Piscar
    Click Element    accessibility_id=Salvar
    Click Element    accessibility_id=0%
Então salvo efeito editado
    Click Element    accessibility_id=Salvar edição

