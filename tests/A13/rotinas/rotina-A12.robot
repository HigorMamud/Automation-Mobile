*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
# Acessandro o aplicativo
#     Dado que estou na tela inicial do aplicativo
#     Quando clico no botão para entrar com a minha conta
#     E digito o e-mail  softwarecasapositivo@gmail.com
#     E digito a senha  Positivo123
#     E clico no botão entrar
#     Sleep    5
#     # Então sou direcionado para home

##############AUTOMAÇÃO#########################
Rotina Agenda dias da semana 
    Dado que crio uma Rotina
    Quando clico em receber uma notificação
    E configuro condição Uma data ou horário
    E seleciono dias da semana
    E salvo as configurações
    E salvo o nome Agenda dias da semana
    Então salvo a rotina Chegada e saída com sucesso
    # Então salvo a Rotina chegada ou saída

# Rotina Agenda todos dias
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro condição Uma data ou horário
#     E seleciono todos os dias
#     E salvo as configurações
#     E salvo nome Agenda todos os dias
#     Então salvo a Rotina chegada ou saída

# Rotina Agenda - Seg Qua Sex
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro condição Uma data ou horário
#     E seleciono Seg Qua Sex
#     E salvo as configurações
#     E salvo nome Agenda - Seg Qua Sex
#     Então salvo a Rotina chegada ou saída    

# Rotina Chegada
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro condição Chegada
#     E salvo nome e local
#     E salvo nome Chegada
#     Então salvo a Rotina

# Rotina Saida
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro condição Saida
#     E salvo nome e local
#     E salvo nome Saída
#     Então salvo a Rotina


# #################CLIMA#########################
# Rotina Clima Céu Aberto
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Clima Céu Aberto    
#     E salvo o nome Clima Céu Aberto
#     Então salvo a Rotina

# Rotina Clima Nublado
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Clima Nublado
#     E salvo o nome Clima Nublado
#     Então salvo a Rotina

# Rotina Clima Chovendo
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Clima Chovendo
#     E salvo o nome Clima Chovendo
#     Então salvo a Rotina    


# Rotina Clima Nevando
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Clima Nevando
#     E salvo o nome Clima Nevando
#     Então salvo a Rotina  


# Rotina Clima Poluído
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Clima Poluído
#     E salvo o nome Clima Poluído
#     Então salvo a Rotina 


# ################UMIDADE#########################
# Rotina Umidade Seco
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Umidade Seco
#     E salvo o nome Umidade Seco
#     Então salvo a Rotina

# Rotina Umidade Confortável
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Umidade Confortável
#     E salvo o nome Umidade Confortável
#     Então salvo a Rotina    

# Rotina Umidade Úmido
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Umidade Úmido
#     E salvo o nome Umidade Úmido
#     Então salvo a Rotina

# ################TEMPERATURA####################
# Rotina Mudança de clima temperatura igual a zero
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro temperatura igual a zero
#     E salvo o nome Temperatura igual a Zero
#     E defino o período ativo 24h - Seg Qua Sex
#     Então salvo a Rotina

# Rotina Temperatura igual a 15
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro temperatura igual 15
#     E salvo o nome Temperatura igual a 15
#     E defino o período ativo Do anoitecer ao amanhecer - Seg Qua Sex
#     Então salvo a Rotina

    
# Rotina Temperatura menor 36
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro temperatura menor 36
#     E salvo o nome Temperatura menor 36
#     E defino o período ativo Do amanhecer ao anoitecer - Seg Qua Sex
#     Então salvo a Rotina


# Rotina Temperatura maior que Zero
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro temperatura maior que zero
#     E salvo o nome Temperatura maior que zero
#     E defino o período ativo Personalizado - Seg Qua Sex
#     Então salvo a Rotina

# ############NASCER-POR-DO-SOL###################  
# Rotina Clima Nascer do Sol amanhecer
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Nascer do Sol ao amanhecer   
#     E salvo o nome Nascer do Sol ao amanhecer
#     E defino o período ativo 24h - Dias uteis
#     Então salvo a Rotina

# Rotina Clima Nascer do Sol 25min após
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro 25min após amanhecer 
#     E salvo o nome 25min após amanhecer
#     E defino o período ativo Do anoitecer ao amanhecer - Dias uteis
#     Então salvo a Rotina

# Rotina Clima Nascer do Sol 10min antes
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro 10min antes do amanhecer   
#     E salvo o nome 10min antes do amanhecer
#     E defino o período ativo Do amanhecer ao anoitecer - Dias uteis
#     Então salvo a Rotina

# Rotina Clima Por do Sol anoitecer
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro Por do Sol anoitecer 
#     E salvo o nome Por do Sol anoitecer
#     E defino o período ativo Personalizado - Dias uteis
#     Então salvo a Rotina

# Rotina Clima Por do Sol antes
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro 10min antes do Por do Sol 
#     E salvo o nome 10min antes do Por do Sol
#     Então salvo a Rotina

# Rotina Clima Por do Sol depois
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E configuro 10min após o Por do Sol 
#     E salvo o nome 10min após o por do sol
#     Então salvo a Rotina

# #############VELOCIDADE DO VENTO#################
# Rotina velocidade do vento - Menor que 2
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E defino a velocidade do vento para Menor que 2 m/s
#     E informo um nome em seguida seleciono a imagem - Menor que 2
#     E defino o período ativo 24h - Todos os dias
#     Então salvo a Rotina - Vento Menor que 2

# Rotina velocidade do vento - Igual a zero
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E defino a velocidade do vento para Igual a zero m/s
#     E informo um nome em seguida seleciono a imagem - Igual a zero
#     E defino o período ativo Do amanhecer ao anoitecer - Todos os dias
#     Então salvo a Rotina - Vento Igual a zero

# Rotina velocidade do vento - Igual a 2
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E defino a velocidade do vento para Igual a 2 m/s
#     E informo um nome em seguida seleciono a imagem - Igual a 2
#     E defino o período ativo Do anoitecer ao amanhecer - Todos os dias
#     Então salvo a Rotina - Vento Igual a 2

# Rotina velocidade do vento - Maior que 2
#     Dado que crio uma Rotina
#     Quando clico em receber uma notificação
#     E defino a velocidade do vento para Maior que 2m/s
#     E informo um nome em seguida seleciono a imagem - Maior que 2
#     E defino o período ativo Personalizado - Todos os dias
#     Então salvo a Rotina - Vento Maior que 2        

# ###########ROTINA-CONTROLE#####################
# Rotina com controle universal
#     Dado que crio uma Rotina
#     E clico no botão Executar um dispositivo
#     Quando seleciono o controle universal
#     E defino os botões do controle
#     E salvo o nome Controle Universal
#     Então salvo a rotina do controle universal

# ############ROTINA-LÂMPADA######################
# Rotina com lâmpada
#     Dado que crio uma Rotina
#     E clico no botão Executar um dispositivo
#     Quando seleciono a lâmpada RGB+
#     E defino a primeira tarefa - ligada 10s
#     E defino a segunda tarefa - Brilho 100% 10s
#     E defino a terceira tarefa - Brilho 50% 10s
#     E defino a quarta tarefa - Modo colorido 10s
#     E defino a tarefa para desligar a Lâmpada
#     E salvo o nome RBG+
#     Então salvo a rotina da lâmpada

# ################ROTINA-ROBÔ########################
# Rotina robô - Ligar
#     Dado que crio uma Rotina
#     E clico no botão Executar um dispositivo
#     Quando seleciono o Smart Robô
#     E defino para ligar o robô - Atraso 10s
#     E defino o Modo Espera - Atraso 10s
#     E defino o Modo Inteligente - Atraso 10s
#     E defino o Modo Cantos - Atraso 10s
#     E defino o Modo Espiral - Atraso 10s
#     E defino para Procurar o robô
#     E defino para Desligar o robô - Atraso 10s
#     E defino o Modo Carregar
#     Capture Page Screenshot
#     E salvo o nome robô
#     Então salvo a rotina do robô

# ################ROTINA-PLUG#######################    
# Rotina com PLUG    
#     Dado que crio uma Rotina
#     E clico no botão Executar um dispositivo
#     Quando seleciono o PLUG
#     E crio a primeira tarefa - Ligado 10s
#     E crio a segunda tarefa - Desligado
#     E salvo o nome PLUG
#     Então salvo a rotina PLUG






##############################UTILIZAR APENAS PARA LIMPAR TODOS AS CENAS CRIADAS###############################

# Excluindo Cena
#     Quando clico em Rotinas
#     FOR  ${counter}    IN RANGE    0    40
#         E excluo a cena do teste
#         Então sou direcionado para tela de rotinas
#         Exit For Loop If    ${counter}==40
#     END
    
    



