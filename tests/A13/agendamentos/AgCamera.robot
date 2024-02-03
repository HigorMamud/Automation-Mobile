*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

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



####Smart Câmera WiFi 2ª Geração
Agendamento Ativar Gravação Smart Câmera WiFi 2ª Geração - Uma vez
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi 2ª Geração - Seg Qua Sex
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Smart Câmera WiFi 2ª Geração - Ter Qui
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Câmera WiFi 2ª Geração - Dias da semana
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera WiFi 2ª Geração - Todos os dias
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Smart Câmera WiFi 2ª Geração - Uma vez
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi 2ª Geração - Seg Qua Sex
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Smart Câmera WiFi 2ª Geração - Ter Qui
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Smart Câmera WiFi 2ª Geração - Dias da semana
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera WiFi 2ª Geração - Todos os dias
    Dado que clico no botão    ${device_cam_2gen}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso    


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



####Vídeo Porteiro WiFi
Agendamento Ativar Gravação Vídeo Porteiro WiFi - Uma vez
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Vídeo Porteiro WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Vídeo Porteiro WiFi - Ter Qui
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Vídeo Porteiro WiFi - Dias da semana
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Vídeo Porteiro WiFi - Todos os dias
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Vídeo Porteiro WiFi - Uma vez
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Vídeo Porteiro WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Vídeo Porteiro WiFi - Ter Qui
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Vídeo Porteiro WiFi - Dias da semana
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Vídeo Porteiro WiFi - Todos os dias
    Dado que clico no botão    ${device_porteiro}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso



####Smart Câmera Bot WiFi
Agendamento Ativar Gravação Smart Câmera Bot WiFi - Uma vez
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento AG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera Bot WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento AG - Seg Qua Sex
    Então o agendamento é realizado com sucesso   

Agendamento Ativar Gravação Smart Câmera Bot WiFi - Ter Qui
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento AG - Ter Qui
    Então o agendamento é realizado com sucesso    
    
Agendamento Ativar Gravação Smart Câmera Bot WiFi - Dias da semana
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento AG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Ativar Gravação Smart Câmera Bot WiFi - Todos os dias
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento AG - Todos os dias
    Então o agendamento é realizado com sucesso 

Agendamento Parar Gravação Smart Câmera Bot WiFi - Uma vez
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento PG - Uma vez
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera Bot WiFi - Seg Qua Sex
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento PG - Seg Qua Sex
    Então o agendamento é realizado com sucesso  
    
Agendamento Parar Gravação Smart Câmera Bot WiFi - Ter Qui
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento PG - Ter Qui
    Então o agendamento é realizado com sucesso      
    
Agendamento Parar Gravação Smart Câmera Bot WiFi - Dias da semana
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento PG - Dias da semana
    Então o agendamento é realizado com sucesso

Agendamento Parar Gravação Smart Câmera Bot WiFi - Todos os dias
    Dado que clico no botão    ${device_cam_bot_v1}
    E clico em Agendar
    Quando realizo o agendamento PG - Todos os dias
    Então o agendamento é realizado com sucesso


####Smart Câmera Bot 2ª Geração
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


####Smart Câmera WiFi com Bateria
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