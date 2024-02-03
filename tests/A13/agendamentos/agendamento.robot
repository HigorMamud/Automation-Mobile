*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
# Acessandro o aplicativo
#     Dado que estou na tela inicial do aplicativo
#     Quando clico no botão para entrar com a minha conta
#     E digito o e-mail  cwbcasainteligente@gmail.com
#     E digito a senha  Positivo23
#     E clico no botão entrar
#     Sleep    5
#     # Então sou direcionado para home


#########AGENDAMENTO-LAMPADA##################
# Agendamento Lâmpada Ligada - Uma vez
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado
    
# Agendamento Lâmpada Ligada - Seg Qua Sex
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Lâmpada Ligada - Ter Qui
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado    

# Agendamento Lâmpada Ligada - Dias da semana
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Lâmpada Ligada - Todos os dias
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias
#     Então o agendamento é criado

# Agendamento Lâmpada Desligada - Uma vez
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento Lâmpada Desligar - Seg Qua Sex
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Lâmpada Desligar - Ter Qui
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Lâmpada Desligada - Dias da semana
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Lâmpada Desligada - Todos os dias
#     Dado que clico na lampada RGB+
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado

# ###LAMPADA Retrô
# Agendamento Lâmpada Retrô Ligada - Uma vez
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Ligada - Seg Qua Sex    
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Ligada - Ter Qui
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Ligada - Dias da Semana
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Ligada - Todos os dias
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias
#     Então o agendamento é criado


# Agendamento Lâmpada Retrô Desligada - Uma vez
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Desligada - Seg Qua Sex    
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Desligada - Ter Qui
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Desligada - Dias da Semana
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Lâmpada Retrô Desligada - Todos os dias
#     Dado que clico na lampada Retrô old
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado

###Luminária de Mesa   
# Agendamento Luminária de Mesa Ligar - Uma vez
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Ligar - Seg Qua Sex
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Ligar - Ter Qui
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Ligar - Dias da Semana        
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Ligar - Todos os dias
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias
#     Então o agendamento é criado    

# Agendamento Luminária de Mesa Desligar - Uma vez
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Desligar - Seg Qua Sex
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Desligar - Ter Qui
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Desligar - Dias da Semana        
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Luminária de Mesa Desligar - Todos os dias
#     Dado que clico na Luminária de Mesa
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado

# ##########AGENDAMENTO-ROBÔ####################
Agendamento Robô - Repetir só uma vez
    Dado que clico no Smart Robô Aspirador WiFi
    Quando realizo o agendamento - Repetir só uma vez
    Então o agendamento é realizado com sucesso - Repetir só uma vez 

# Agendamento Robô - Repetir só uma vez - Desligar
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Repetir só uma vez - Desligar
#     Então o agendamento é realizado com sucesso - Repetir só uma vez - Desligar   

# Agendamento Robô - Seg Qua Sex
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Seg Qua Sex
#     Então o agendamento é realizado com sucesso - Seg Qua Sex

# Agendamento Robô - Seg Qua Sex - Desligar
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Seg Qua Sex - Desligar
#     Então o agendamento é realizado com sucesso - Seg Qua Sex - Desligar 

# Agendamento Robô - Ter Qui
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Ter Qui - Ligar
#     Então o agendamento é realizado com sucesso - Ter Qui

# Agendamento Robô - Ter Qui - Desligar
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Ter Qui - Desligar
#     Então o agendamento é realizado com sucesso - Ter Qui - Desligar       

# Agendamento Robô - Dias uteis da semana
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Dias uteis da semana
#     Então o agendamento é realizado com sucesso - Dias uteis da semana

# Agendamento Robô - Dias uteis da semana - Desligar
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Dias uteis da semana - Desligar
#     Então o agendamento é realizado com sucesso - Dias uteis da semana - Desligar

# Agendamento Robô - Todos os dias
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Todos os dias
#     Então o agendamento é realizado com sucesso - Todos os dias

# Agendamento Robô - Todos os dias - Desligar
#     Dado que clico no Smart Robô Aspirador WiFi
#     Quando realizo o agendamento - Todos os dias - Desligar
#     Então o agendamento é realizado com sucesso - Todos os dias - Desligar 

# #######################AGENDAMENTO-CÂMERA######################
# Agendamento Ativar Gravação - Uma vez
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento AG - Uma vez
#     Então o agendamento é realizado com sucesso

# Agendamento Ativar Gravação - Seg Qua Sex
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento AG - Seg Qua Sex
#     Então o agendamento é realizado com sucesso   

# Agendamento Ativar Gravação - Ter Qui
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento AG - Ter Qui
#     Então o agendamento é realizado com sucesso    
    
# Agendamento Ativar Gravação - Dias da semana
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento AG - Dias da semana
#     Então o agendamento é realizado com sucesso

# Agendamento Ativar Gravação - Todos os dias
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento AG - Todos os dias
#     Então o agendamento é realizado com sucesso 

# Agendamento Parar Gravação - Uma vez
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento PG - Uma vez
#     Então o agendamento é realizado com sucesso

# Agendamento Parar Gravação - Seg Qua Sex
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento PG - Seg Qua Sex
#     Então o agendamento é realizado com sucesso  
    
# Agendamento Parar Gravação - Ter Qui
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento PG - Ter Qui
#     Então o agendamento é realizado com sucesso      
    
# Agendamento Parar Gravação - Dias da semana
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento PG - Dias da semana
#     Então o agendamento é realizado com sucesso

# Agendamento Parar Gravação - Todos os dias
#     Dado que clico na Smart Câmera WiFi
#     E clico em Agendar
#     Quando realizo o agendamento PG - Todos os dias
#     Então o agendamento é realizado com sucesso


# # ##################AGENDAMENTO-PLUG###################  
# Agendamento PLUG Ligado - Uma vez
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado

# Agendamento PLUG Ligado - Dias da semana
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento PLUG Ligado - Seg Qua Sex
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento PLUG Ligado - Ter Qui
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado    
    
# Agendamento PLUG Ligado - Todos os dias
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias
#     Então o agendamento é criado

# Agendamento PLUG Desligado - Uma vez
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento PLUG Desligado - Dias da semana
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado
    
# Agendamento PLUG Desligado - Seg Qua Sex
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento PLUG Desligado - Ter Qui
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento PLUG Desligado - Todos os dias
#     Dado que clico no PLUG Max
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado

###############AGENDAMENTO-FITA#################
# Agendamento Fita RBG ligada - Uma vez
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado

# Agendamento Fita RGB ligada - Seg Qua Sex
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Fita RGB ligada - Ter Qua Qui
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Fita RGB ligado - Dias da semana
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Fita RGB ligado - Todos os dias
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias  

# Agendamento Fita RGB desligada - Uma vez
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento Fita RGB desligada - Seg Qua Sex
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Fita RGB desligada - Ter Qua Qui
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Fita RGB desligado - Dias da semana
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Fita RGB desligado - Todos os dias
#     Dado que clico na Fita RGB Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado   

#CCT
# Agendamento Fita CCT ligada - Uma vez
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Uma vez
#     Então o agendamento é criado

# Agendamento Fita CCT ligada - Seg Qua Sex
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Fita CCT ligada - Ter Qua Qui
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Fita CCT ligado - Dias da semana
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Fita CCT ligado - Todos os dias
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Ligar - Todos os Dias  

# Agendamento Fita CCT desligada - Uma vez
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Uma vez
#     Então o agendamento é criado

# Agendamento Fita CCT desligada - Seg Qua Sex
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Seg Qua Sex
#     Então o agendamento é criado

# Agendamento Fita CCT desligada - Ter Qua Qui
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Ter Qui
#     Então o agendamento é criado

# Agendamento Fita CCT desligado - Dias da semana
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Dias da semana
#     Então o agendamento é criado

# Agendamento Fita CCT desligado - Todos os dias
#     Dado que clico na Fita CCT Lucas
#     E realizo um novo agendamento
#     Quando defino Desligar - Todos os Dias
#     Então o agendamento é criado                   


