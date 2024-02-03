*** Settings ***

Resource        ../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Reverter nome da lâmpada - Smart Lâmpada WiFi RGB+
    Dado que clico na lampada Smart Lâmpada WiFi RGB+ Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi RGB+
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi RGB+

Reverter nome da lâmpada - Smart Lâmpada WiFi
    Dado que clico na lampada Smart Lâmpada WiFi Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi

Reverter nome da lâmpada - Smart Lâmpada WiFi Retrô
    Dado que clico na lampada Smart Lâmpada WiFi Retrô Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Retrô
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Retrô

Reverter nome da lâmpada - Smart Lâmpada WiFi Lite
    Dado que clico na lampada Smart Lâmpada WiFi Lite Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Lâmpada WiFi Lite
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada WiFi Lite

Reverter nome da Luminaria - Smart Luminária de Mesa Wi-Fi
    Dado que clico na lampada Smart Luminaria de Mesa WiFi Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Luminaria de Mesa WiFi Teste QA
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Luminária de Mesa Wi-Fi   

Reverter nome da lâmpada - Smart Lâmpada Wi-Fi Spot
    Dado que clico na lampada Smart Lâmpada Wi-Fi Spot Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Lâmpada Wi-Fi Spot
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Lâmpada Wi-Fi Spot

Reverter nome da Fita - Smart Fita LED Multi Temperatura
    Dado que clico na lampada Smart Fita LED Multi Temperatura Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Fita LED Multi Temperatura
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED Multi Temperatura

Reverter nome da Fita - Smart Fita LED RGB
    Dado que clico na lampada Smart Fita LED RGB Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Fita LED RGB
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Fita LED RGB

Reverter nome da Fita - Smart Interruptor WiFi 2
    Dado que clico na lampada Smart Interruptor WiFi 2 Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Interruptor WiFi 2
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Interruptor WiFi 2    

Reverter nome da Fita - Painel LED Diana
    Dado que clico na lampada Painel LED Diana Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Painel LED Diana
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Painel LED Diana 

Reverter nome da Fita - Smart Bocal antigo
    Dado que clico no Smart Bocal antigo Teste QA
    E clico na engrenagem
    Quando altero o nome da lâmpada para Smart Bocal antigo
    E retorno para home do aplicativo
    Então é validado que o nome foi alterado para Smart Bocal antigo       