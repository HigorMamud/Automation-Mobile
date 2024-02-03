*** Settings ***

Documentation    Smart Câmera Bot 2ª Geração

Resource    ../../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo
        

*** Test Cases ***
Agendamento Ativar Gravação Smart Câmera Bot 2ª Geração - Uma vez
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera Bot 2ª Geração - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Smart Câmera Bot 2ª Geração - Ter Qui
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Câmera Bot 2ª Geração - Dias da semana
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera Bot 2ª Geração - Todos os dias
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Smart Câmera Bot 2ª Geração - Uma vez
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera Bot 2ª Geração - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Smart Câmera Bot 2ª Geração - Ter Qui
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Smart Câmera Bot 2ª Geração - Dias da semana
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera Bot 2ª Geração - Todos os dias
    Dado que clico no botão    ${device_cam_bot_v2}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso