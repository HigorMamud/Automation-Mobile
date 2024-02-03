*** Settings ***

Resource    ../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Robô - Repetir só uma vez
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez 

Agendamento Robô - Repetir só uma vez - Desligar
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar   

Agendamento Robô - Seg Qua Sex
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é realizado com sucesso - Seg Qua Sex

Agendamento Robô - Seg Qua Sex - Desligar
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar 

Agendamento Robô - Ter Qui
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é realizado com sucesso - Ter Qui

Agendamento Robô - Ter Qui - Desligar
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é realizado com sucesso - Ter Qui - Desligar       

Agendamento Robô - Dias uteis da semana
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é realizado com sucesso - Dias uteis da semana

Agendamento Robô - Dias uteis da semana - Desligar
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

Agendamento Robô - Todos os dias
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é realizado com sucesso - Todos os dias

Agendamento Robô - Todos os dias - Desligar
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é realizado com sucesso - Todos os dias - Desligar 
