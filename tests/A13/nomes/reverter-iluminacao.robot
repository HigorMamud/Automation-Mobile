*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Reverter nome da lâmpada - Smart Lâmpada WiFi RGB+
    Dado que clico no botão    ${device_edit_lampada_rgb+}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi RGB+
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi RGB+

Reverter nome da lâmpada - Smart Lâmpada WiFi
    Dado que clico no botão    ${device_edit_lampada_wifi}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi

Reverter nome da lâmpada - Smart Lâmpada WiFi Retrô
    Dado que clico no botão    ${device_edit_lampada_retro}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Retrô
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Retrô

Reverter nome da lâmpada - Smart Lâmpada WiFi Lite
    Dado que clico no botão    ${device_edit_lampada_lite}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Lite
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Lite

Reverter nome da Luminaria - Smart Luminária de Mesa Wi-Fi
    Dado que clico no botão    ${device_edit_luminaria}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Luminária de Mesa Wi-Fi

Reverter nome da Luminaria - Smart Luminária de Mesa Wi-Fi de Embutir 3
    Dado que clico no botão    ${device_edit_spot_embutir}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Luminária Spot Wi-Fi de Embutir
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Luminária Spot Wi-Fi de Embutir 3    

Reverter nome da lâmpada - Smart Lâmpada Wi-Fi Spot
    Dado que clico no botão    ${device_edit_lampada_wifi}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Lâmpada Wi-Fi Spot
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada Wi-Fi Spot

Reverter nome da Fita - Smart Fita LED Multi Temperatura
    Dado que clico no botão    ${device_edit_fita_multi}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Fita LED Multi Temperatura
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED Multi Temperatura

Reverter nome da Fita - Smart Fita LED RGB
    Dado que clico no botão    ${device_edit_fita_rgb}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Fita LED RGB
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED RGB

Reverter nome da Fita - Smart Interruptor WiFi 2
    Dado que clico no botão    ${device_edit_interruptor}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Smart Interruptor WiFi 2
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Interruptor WiFi 2    

Reverter nome da Fita - Painel LED Diana
    Dado que clico no botão    ${device_edit_painel}
    E clico na engrenagem
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando altero o nome da lâmpada para Painel LED Diana
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Painel LED Diana 

Reverter nome da Fita - Smart Bocal antigo
    Dado que clico no botão    ${device_edit_bocal}
    E clico na engrenagem - TUYA
    Wait Until Element Is Visible    accessibility_id=Configurações    20
    Swipe    960    388    953    388   
    Quando realizo a alteração o nome da lâmpada para Smart Bocal
    Swipe    977    379    938    379
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Bocal antigo       