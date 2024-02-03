*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Lâmpada WiFi RGB+ Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Lâmpada WiFi RGB+Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui   

Agendamento Smart Lâmpada WiFi RGB+ Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Lâmpada WiFi RGB+ Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias

Agendamento Smart Lâmpada WiFi RGB+ Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_rgb+}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar


###LAMPADA WIFI
Agendamento Smart Lâmpada WiFi Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Lâmpada WiFi Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Lâmpada WiFi Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Lâmpada WiFi Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Lâmpada WiFi Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui   

Agendamento Smart Lâmpada WiFi Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Lâmpada WiFi Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Lâmpada WiFi Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Lâmpada WiFi Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias

Agendamento Smart Lâmpada WiFi Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_wifi}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar



###LAMPADA Retrô
Agendamento Lâmpada Retrô Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Lâmpada Retrô Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Lâmpada Retrô Ligada - Seg Qua Sex    
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Lâmpada Retrô Desligada - Seg Qua Sex    
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Lâmpada Retrô Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Lâmpada Retrô Desligada - Ter Qui
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Lâmpada Retrô Ligada - Dias da Semana
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Lâmpada Retrô Desligada - Dias da Semana
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Lâmpada Retrô Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias

Agendamento Lâmpada Retrô Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_retro}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar


####Wifi Lite
Agendamento Smart Lâmpada WiFi Lite Ligada - Uma vez
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Lâmpada WiFi Lite Desligada - Uma vez
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Lâmpada WiFi Lite Ligada - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Lâmpada WiFi Lite Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Lâmpada WiFi Lite Ligada - Ter Qui
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui   

Agendamento Smart Lâmpada WiFi Lite Desligar - Ter Qui
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Lâmpada WiFi Lite Ligada - Dias da semana
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Lâmpada WiFi Lite Desligada - Dias da semana
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Lâmpada WiFi Lite Ligada - Todos os dias
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias

Agendamento Smart Lâmpada WiFi Lite Desligada - Todos os dias
    Dado que clico no botão    ${device_lampada_lite}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar




##Luminária de Mesa   
Agendamento Smart Luminária de Mesa Wi-Fi Ligar - Uma vez
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Luminária de Mesa Wi-Fi Desligar - Uma vez
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Luminária de Mesa Wi-Fi Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Luminária de Mesa Wi-Fi Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Luminária de Mesa Wi-Fi Ligar - Ter Qui
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Smart Luminária de Mesa Wi-Fi Desligar - Ter Qui
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Luminária de Mesa Wi-Fi Ligar - Dias da Semana        
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Luminária de Mesa Wi-Fi Desligar - Dias da Semana        
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Luminária de Mesa Wi-Fi Ligar - Todos os dias
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias    

Agendamento Smart Luminária de Mesa Wi-Fi Desligar - Todos os dias
    Dado que clico no botão    ${device_luminaria}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar

####Luminaria Embutir
Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Uma vez
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Uma vez
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Ter Qui
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Ter Qui
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Dias da Semana        
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Dias da Semana        
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Luminária Spot Wi-Fi de Embutir Ligar - Todos os dias
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias    

Agendamento Smart Luminária Spot Wi-Fi de Embutir Desligar - Todos os dias
    Dado que clico no botão    ${device_spot_embutir}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar


####LAMPADA SPOT
Agendamento Smart Lâmpada Wi-Fi Spot Ligar - Uma vez
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Lâmpada Wi-Fi Spot Desligar - Uma vez
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Lâmpada Wi-Fi Spot Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Lâmpada Wi-Fi Spot Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Lâmpada Wi-Fi Spot Ligar - Ter Qui
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Smart Lâmpada Wi-Fi Spot Desligar - Ter Qui
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Lâmpada Wi-Fi Spot Ligar - Dias da Semana        
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Lâmpada Wi-Fi Spot Desligar - Dias da Semana        
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Lâmpada Wi-Fi Spot Ligar - Todos os dias
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias    

Agendamento Smart Lâmpada Wi-Fi Spot Desligar - Todos os dias
    Dado que clico no botão    ${device_spot}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar


####Painel LED
Agendamento Smart Painel LED Ligar - Uma vez
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Painel LED Desligar - Uma vez
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Painel LED Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Painel LED Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Painel LED Ligar - Ter Qui
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Smart Painel LED Desligar - Ter Qui
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Painel LED Ligar - Dias da Semana        
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Painel LED Desligar - Dias da Semana        
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Painel LED Ligar - Todos os dias
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias    

Agendamento Smart Painel LED Desligar - Todos os dias
    Dado que clico no botão    ${device_painel}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar


###Smart Bocal
Agendamento Smart Bocal Ligar - Uma vez
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez

Agendamento Smart Bocal Desligar - Uma vez
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar

Agendamento Smart Bocal Ligar - Seg Qua Sex
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Smart Bocal Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar

Agendamento Smart Bocal Ligar - Ter Qui
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Smart Bocal Desligar - Ter Qui
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar

Agendamento Smart Bocal Ligar - Dias da Semana        
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Smart Bocal Desligar - Dias da Semana        
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Smart Bocal Ligar - Todos os dias
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias    

Agendamento Smart Bocal Desligar - Todos os dias
    Dado que clico no botão    ${device_bocal}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar