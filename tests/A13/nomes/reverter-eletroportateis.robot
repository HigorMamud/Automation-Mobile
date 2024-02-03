*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Editar nome do Smart Robô Aspirador Wi-Fi Laser
    Dado que clico no botão    ${device_edit_robo_laser}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome do Smart Robô Aspirador Wi-Fi Laser
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Robô Aspirador Wi-Fi Laser