*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Editar nome Smart Câmera Wi-Fi
    Dado que clico no botão    ${device_cam_wifi}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi - Teste QA 

Editar nome Smart Câmera Wi-Fi 2ª Geração
    Dado que clico no botão    ${device_cam_2gen}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi 2ª Geração - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi 2ª Geração - Teste QA        

Editar nome Smart Câmera 360° WiFi
    Dado que clico no botão    ${device_cam_360}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera 360° WiFi - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera 360° WiFi - Teste QA

Editar nome Vídeo Porteiro WiFi
    Dado que clico no botão    ${device_porteiro}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Vídeo Porteiro WiFi - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Vídeo Porteiro WiFi - Teste QA  

Editar nome Smart Câmera Bot WiFi
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera Bot WiFi - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera Bot WiFi - Teste QA

Editar nome Smart Câmera Bot 2ª Geração
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera Bot 2ª Geração - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera Bot 2ª Geração - Teste QA  

Editar nome Smart Câmera WiFi com Bateria
    Dado que clico no botão    ${device_cam_bateria}
    E clico na engrenagem - Câmera
    Wait Until Element Is Visible    accessibility_id=Configurações    10
    Swipe    960    388    953    388
    Quando edito o nome da câmera - Smart Câmera WiFi com Bateria - Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então o nome é alterado para Smart Câmera WiFi com Bateria - Teste QA            

    

