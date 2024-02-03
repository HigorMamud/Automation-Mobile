*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
##LAMPADA###
Editar nome da lâmpada - Smart Lâmpada WiFi RGB+
    Dado que clico no botão    ${device_lampada_rgb+}   
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi RGB+ Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi RGB+ Teste QA

Editar nome da lâmpada - Smart Lâmpada WiFi
    Dado que clico no botão    ${device_lampada_wifi}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Teste QA

Editar nome da lâmpada - Smart Lâmpada WiFi Retrô
    Dado que clico no botão    ${device_lampada_retro}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Retrô Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Retrô Teste QA

Editar nome da lâmpada - Smart Lâmpada WiFi Lite
    Dado que clico no botão    ${device_lampada_lite}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Lite Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Lite Teste QA

Editar nome da Luminaria - Smart Luminária de Mesa Wi-Fi
    Dado que clico no botão    ${device_luminaria}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Luminaria de Mesa WiFi Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Luminária de Mesa Wi-Fi Teste QA

Editar nome da Luminaria - Smart Luminária Spot Wi-Fi de Embutir 3
    Dado que clico no botão    ${device_spot_embutir}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi de Embutir 3 Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Luminária Spot Wi-Fi de Embutir 3 Teste QA    

Editar nome da lâmpada - Smart Lâmpada Wi-Fi Spot
    Dado que clico no botão    ${device_spot}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Lâmpada Wi-Fi Spot Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada Wi-Fi Spot Teste QA

Editar nome da Fita - Smart Fita LED Multi Temperatura
    Dado que clico no botão    ${device_fita_multi}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Fita LED Multi Temperatura Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED Multi Temperatura Teste QA

Editar nome da Fita - Smart Fita LED RGB
    Dado que clico no botão    ${device_fita_rgb}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Fita LED RGB Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED RGB Teste QA

Editar nome da Fita - Smart Interruptor WiFi 2
    Dado que clico no botão    ${device_interruptor}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Interruptor WiFi 2 Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Interruptor WiFi 2 Teste QA    

Editar nome da Fita - Painel LED Diana
    Dado que clico no botão    ${device_painel}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Painel LED Diana Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Painel LED Diana Teste QA

Editar nome da Fita - Smart Bocal antigo
    Dado que clico no botão    ${device_bocal}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388
    Quando altero o nome da lâmpada para Smart Bocal antigo Teste QA
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Bocal antigo Teste QA
