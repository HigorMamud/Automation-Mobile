*** Settings ***

Resource            ../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Editando nome Plug - Smart Plug Wi-Fi
    Dado que clico no botão    ${device_plug}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando altero o nome Smart Plug Wi-Fi Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Plug Wi-Fi Teste QA



    
    