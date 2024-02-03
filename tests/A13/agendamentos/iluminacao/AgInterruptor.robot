*** Settings ***

Documentation    Smart Interruptor Wi-Fi

Resource            ../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Smart Interruptor WiFi 2 Ligar - Uma vez - C1 Ligar C2 Desligar
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Ligar C2 Desligar - Uma vez
    Então o agendamento do Interruptor C1 Ligar e C2 Desligar Uma vez é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 - Uma vez - C1 Desligar C3 Ligar
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Desligar C3 Ligar - Uma vez
    Então o agendamento do Interruptor C1 Desligar e C3 Ligar Uma vez é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 - Uma vez - Circuito 2 Ligar Circuito 3 Desligar
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C2 Ligar C3 Desligar - Uma vez
    Então o agendamento do Interruptor C2 Ligar C3 Desligar Uma vez é salvo com sucesso        

Agendamento Smart Interruptor WiFi 2 C1 Ligar e C2 Desligar - Seg Qua Sex
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Ligar C2 Desligar - Seg Qua Sex
    Então o agendamento do Interruptor C1 Ligar e C2 Desligar Seg Qua Sex é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C1 Desligar e C3 - Seg Qua Sex
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Desligar C3 Ligar - Seg Qua Sex
    Então o agendamento do Interruptor C1 Desligar e C3 Ligar Seg Qua Sex é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C2 Ligar C3 Desligar - Seg Qua Sex        
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C2 Ligar C3 Desligar - Seg Qua Sex
    Então o agendamento do Interruptor C2 Ligar C3 Desligar Seg Qua Sex é salvo com sucesso


Agendamento Smart Interruptor WiFi 2 C1 Ligar e C2 Desligar - Ter Qui
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Ligar C2 Desligar - Ter Qui
    Então o agendamento do Interruptor C1 Ligar e C2 Desligar Ter Qui é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C1 Desligar e C3 - Ter Qui
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Desligar C3 Ligar - Ter Qui
    Então o agendamento do Interruptor C1 Desligar e C3 Ligar Ter Qui é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C2 Ligar C3 Desligar - Ter Qui        
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C2 Ligar C3 Desligar - Ter Qui
    Então o agendamento do Interruptor C2 Ligar C3 Desligar Ter Qui é salvo com sucesso 

Agendamento Smart Interruptor WiFi 2 C1 Ligar e C2 Desligar - Dias da semana
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Ligar C2 Desligar - Dias da semana
    Então o agendamento do Interruptor C1 Ligar e C2 Desligar Dias da semana é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C1 Desligar e C3 - Dias da semana
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C1 Desligar C3 Ligar - Dias da semana
    Então o agendamento do Interruptor C1 Desligar e C3 Ligar Dias da semana é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 C2 Ligar C3 Desligar - Dias da semana        
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino C2 Ligar C3 Desligar - Dias da semana
    Então o agendamento do Interruptor C2 Ligar C3 Desligar Dias da semana é salvo com sucesso        

#####TODOS
Agendamento Smart Interruptor WiFi 2 Ligar - Todos
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Ligar - Todos
    Então o agendamento do Interruptor Ligar - Uma vez é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Desligar - Todos
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Desligar - Todos
    Então o agendamento do Interruptor Desligar - Uma vez é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Todos - Seg Qua Sex
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Ligar - Seg Qua Sex - Todos
    Então o agendamento do Interruptor Ligar - Seg Qua Sex é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Desligar - Todos - Seg Qua Sex
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Desligar - Seg Qua Sex - Todos
    Então o agendamento do Interruptor Desligar - Seg Qua Sex é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Todos - Ter Qui
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Ligar - Ter Qui - Todos
    Então o agendamento do Interruptor Ligar - Ter Qui - Todos é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Desligar - Todos - Ter Qui
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Desligar - Ter Qui - Todos
    Então o agendamento do Interruptor Desligar - Ter Qui - Todos é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Todos - Dias da semana
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Ligar - Dias da semana - Todos
    Então o agendamento do Interruptor Ligar - Dias da semana - Todos é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Desligar - Todos - Dias da semana
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Desligar - Dias da semana - Todos
    Então o agendamento do Interruptor Desligar - Dias da semana - Todos é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Ligar - Todos - Todos os dias
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Ligar - Todos os dias - Todos
    Então o agendamento do Interruptor Ligar - Todos os dias - Todos é salvo com sucesso

Agendamento Smart Interruptor WiFi 2 Desligar - Todos - Todos os dias
    Dado que clico no botão    ${device_interruptor}
    E realizo um novo agendamento - Interruptor
    Quando defino Desligar - Todos os dias - Todos
    Então o agendamento do Interruptor Desligar - Todos os dias - Todos é salvo com sucesso

                 


