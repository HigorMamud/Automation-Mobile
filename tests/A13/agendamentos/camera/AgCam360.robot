*** Settings ***

Documentation    Smart Câmera 360° WiFi

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Agendamento Ativar Gravação Smart Câmera 360° WiFi - Uma vez
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação - Seg Qua Sex
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação - Ter Qui
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação - Dias da semana
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação - Todos os dias
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação - Uma vez
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação - Seg Qua Sex
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação - Ter Qui
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação - Dias da semana
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação - Todos os dias
    Dado que clico no botão    ${device_cam_360}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso