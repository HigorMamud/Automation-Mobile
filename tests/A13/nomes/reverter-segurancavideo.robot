*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Reverter nome Smart Câmera Wi-Fi
    Dado que clico no botão    ${device_edit_cam_wifi}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi

Reverter nome Smart Câmera Wi-Fi 2ª Geração - Teste QA
    Dado que clico no botão    ${device_edit_cam_2gen}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi 2ª Geração
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi 2ª Geração  

Reverter nome Smart Câmera 360° WiFi - Teste QA
    Dado que clico no botão    ${device_edit_cam_360}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera 360° WiFi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera 360° WiFi   

Reverter nome Vídeo Porteiro WiFi - Teste QA
    Dado que clico no botão    ${device_edit_porteiro}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Vídeo Porteiro WiFi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Vídeo Porteiro WiFi

Reverter nome Smart Câmera Bot WiFi - Teste QA
    Dado que clico no botão    ${device_edit_cam_bot_v1}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera Bot WiFi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera Bot WiFi

Reverter nome Smart Câmera Bot 2ª Geração - Teste QA
    Dado que clico no botão    ${device_edit_cam_bot_v2}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera Bot 2ª Geração
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera Bot 2ª Geração   

Reverter nome Smart Câmera WiFi com Bateria - Teste QA
    Dado que clico no botão    ${device_edit_cam_bateria}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi com Bateria
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi com Bateria                