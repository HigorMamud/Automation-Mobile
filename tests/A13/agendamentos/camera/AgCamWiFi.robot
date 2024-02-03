*** Settings ***
Documentation    AGENDAMENTO SMART CAMERA WIFI

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Agendamento Ativar Gravação Smart Câmera WiFi - Uma vez
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Smart Câmera WiFi - Ter Qui
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Câmera WiFi - Dias da semana
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi - Todos os dias
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Smart Câmera WiFi - Uma vez
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Smart Câmera WiFi - Ter Qui
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Smart Câmera WiFi - Dias da semana
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi - Todos os dias
    Dado que clico no botão    ${device_cam_wifi}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso