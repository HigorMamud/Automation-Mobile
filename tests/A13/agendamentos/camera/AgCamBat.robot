*** Settings ***

Documentation    Smart Câmera WiFi com Bateria

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Agendamento Ativar Gravação Smart Câmera WiFi com Bateria - Uma vez
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi com Bateria - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Smart Câmera WiFi com Bateria - Ter Qui
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Câmera WiFi com Bateria - Dias da semana
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi com Bateria - Todos os dias
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Smart Câmera WiFi com Bateria - Uma vez
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi com Bateria - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Smart Câmera WiFi com Bateria - Ter Qui
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Smart Câmera WiFi com Bateria - Dias da semana
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi com Bateria - Todos os dias
    Dado que clico no botão    ${device_cam_bateria}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso