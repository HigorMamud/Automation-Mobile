*** Settings ***

Resource        ../../resources/base.robot

*** Comments ***
Essas variaveis contemplam os arquivos com cenarios de Rotinas.


*** Variables ***
################   ROTINAS   ###############
#Titulo cenas
${title_cenas}                        accessibility_id=Cenas

#Rotina Tarefas
${btn_nova_rotina}                    accessibility_id=Nova Rotina
${tela_rotinas}                       accessibility_id=Rotinas

${btn_receber_notif}                  accessibility_id=Receber uma notificação
${btn_executar_dispositivo}           accessibility_id=Executar um dispositivo


${btn_selecionar_dispositivo}         accessibility_id=Selecione um dispositivo
${btn_iluminacao}                     accessibility_id=Iluminação
${btn_seguranca_video}                accessibility_id=Segurança e vídeo
${btn_conforto_automacao}             accessibility_id=Conforto e automação
${btn_eletroportateis}                accessibility_id=Eletroportáteis

#Sanity Iluminação
${btn_brilho}                         accessibility_id=0%
${btn_temperatura100}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View[5]            

#Rotina Tarefas Iluminação
${btn_ligar}                          accessibility_id=Ligar
${btn_desligar}                       accessibility_id=Desligar

${btn_mudar_brilho}                   xpath=(//android.widget.Button[@content-desc="--"])[1]
${btn_brilho_retro}                   accessibility_id=--
${btn_brilho51}                       accessibility_id=0%   

${btn_mudar_temperatura}              xpath=(//android.widget.Button[@content-desc="--"])[2]
${btn_temperatura50}                  accessibility_id=  0%

${btn_menorque}                       accessibility_id=Menor que
${btn_maiorque}                       accessibility_id=Maior que

${btn_selecionar_modo}                accessibility_id=Selecione                    
${btn_modo_branco}                    accessibility_id=Branco
${btn_modo_colorido}                  accessibility_id=Colorido
${btn_cores}                          accessibility_id=Cores
${btn_modo_efeitos}                   accessibility_id=Efeitos
${btn_modo_musica}                    accessibility_id=Música

${btn_naoperturbe_ativar}             accessibility_id=Ativar
${btn_naoperturbe_desativar}          accessibility_id=Desativar

#Rotina Tarefas Segurança e Vídeo
${btn_ligar1}                         xpath=(//android.widget.Button[@content-desc="Ligar"])[1]
${btn_ligar2}                         xpath=(//android.widget.Button[@content-desc="Ligar"])[2]
${btn_ligar3}                         xpath=(//android.widget.Button[@content-desc="Ligar"])[3]
${btn_ligar4}                         xpath=(//android.widget.Button[@content-desc="Ligar"])[4]
${btn_ligar5}                         xpath=(//android.widget.Button[@content-desc="Ligar"])[5]

${btn_desligar1}                      xpath=(//android.widget.Button[@content-desc="Desligar"])[1]
${btn_desligar2}                      xpath=(//android.widget.Button[@content-desc="Desligar"])[2]
${btn_desligar3}                      xpath=(//android.widget.Button[@content-desc="Desligar"])[3]
${btn_desligar4}                      xpath=(//android.widget.Button[@content-desc="Desligar"])[4]
${btn_desligar5}                      xpath=(//android.widget.Button[@content-desc="Desligar"])[5]

#Rotinas Controle de movimento
${btn_cima}                           accessibility_id=Cima
${btn_direita}                        accessibility_id=Direita
${btn_baixo}                          accessibility_id=Baixo
${btn_esquerda}                       accessibility_id=Esquerda

#Rotinas Modo de gravação
${grav_cont}                         accessibility_id=Gravação\ncontínua
${detec_mov}                         accessibility_id=Detecção de\nmovimento

#Rotinas - Variaveis para evitar erro em cenários variados.
${ignora_erro}                       accessibility_id=Rotinas
${ignora_sensor}                     accessibility_id=Sensibilidade do sensor
${ignora_sensi}                      accessibility_id=Sensibilidade
${ignora_modo}                       accessibility_id=Modo
${ignora_rotina}                     accessibility_id=Nova Rotina
${ignora_rotina2}                    accessibility_id=Rotina

#Rotinas Tarefas Visão noturna
${btn_auto}                          accessibility_id=auto
${btn_desligado}                     accessibility_id=desligado
${btn_ligado}                        accessibility_id=ligado

#Rotinas Fechadura
${btn_abrir}                         accessibility_id=Abrir
${btn_fechar}                        accessibility_id=Fechar 
${btn_ligado_fech}                   accessibility_id=Ligado
${btn_desligado_fech}                accessibility_id=Desligado

#Rotinas Bocal
${luz_acesa}        accessibility_id=Luz acesa - LED ligado\nLED indicador permanecerá ligado quando a luz está acesa.
${led_desligado}    accessibility_id=LED desligado\nO indicador de LED permanecerá desligado quando a lâmpada estiver acesa ou desligada.
${luz_apagada}      accessibility_id=Luz apagada - LED ligado\nLED indicador permanecerá ligado quando a luz está apagada.


#Rotina Condições
${btn_chegada_saida}                  accessibility_id=Chegada ou saída
${btn_descricao}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
${btn_confirmar_endereco}             accessibility_id=Confirmar endereço
${btn_chegar}                         accessibility_id=Chegar
${btn_selecione_local}                accessibility_id=Selecione um local

${btn_data_horario}                   accessibility_id=Uma data ou horário

${btn_alteracao_dispositivo}          accessibility_id=Alterações em outro dispositivo
${checkbox_todascondicoes}            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.view.View[5]

${btn_mudanca_clima}                  accessibility_id=Mudança no clima
${btn_temperatura}                    xpath=(//android.widget.Button[@content-desc="--"])[1]
${btn_vento}                          xpath=(//android.widget.Button[@content-desc="--"])[2]
${btn_umidade}                        xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
${btn_seco}                           accessibility_id=Seco
${btn_confortavel}                    accessibility_id=Confortável
${btn_umido}                          accessibility_id=Úmido

#Variaveis de temperatura no dispositivo - iluminação
${slider_temp1}                         accessibility_id=100% Quente
${slider_temp25}                        accessibility_id=40% Quente
${slider_temp50}                        accessibility_id=Neutro
${slider_temp75}                        accessibility_id=100% Frio
${slider_temp100}                       accessibility_id=40% Frio

${btn_naopertube}                       accessibility_id=Não perturbe, Pressione o interruptor 2 vezes consecutivas para acender a luz


${btn_clima}                          xpath=(//android.widget.Button[@content-desc="Selecione"])[2]
${btn_ceu_aberto}                     accessibility_id=Céu aberto
${btn_nublado}                        accessibility_id=Nublado
${btn_chovendo}                       accessibility_id=Chovendo
${btn_nevando}                        accessibility_id=Nevando
${btn_poluido}                        accessibility_id=Poluído

${btn_nascer_por}                     xpath=(//android.widget.Button[@content-desc="Selecione"])[3]
${btn_nascer_sol}                     accessibility_id=Nascer do sol
${btn_por_sol}                        accessibility_id=Pôr do sol

${btn_sensibilidade}                  accessibility_id=Baixa

${btn_periodo_ativo}                   accessibility_id=Período ativo

${textbox_nome_rotina}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText
${textbox_busque_aqui}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView[1]

#Sensibilidade camera com bateria
${nvl_sensi}    xpath=//android.widget.Button[@content-desc="= 1"]


#Rotinas de condições PLUG
${btn_potencia}                       xpath=//android.widget.Button[@content-desc="--"]




#Botões das ações dos circuitos das Rotinas com Interruptor
${btn_circuito1}                     xpath=(//android.widget.Button[@content-desc="Nenhum"])[1]
${btn_circuito2}                     xpath=(//android.widget.Button[@content-desc="Nenhum"])[2]
${btn_circuito3}                     xpath=(//android.widget.Button[@content-desc="Nenhum"])[3]
${btn_estado_ini}                    xpath=(//android.widget.Button[@content-desc="Nenhum"])[4] 
${liga_C1}                           accessibility_id=Desligado, On-Off 0
${liga_C2}                           accessibility_id=Desligado, On-Off 1
${liga_C3}                           accessibility_id=Desligado, On-Off 2
${desliga_C1}                           accessibility_id=Ligado, On-Off 0
${desliga_C2}                           accessibility_id=Ligado, On-Off 1
${desliga_C3}                           accessibility_id=Ligado, On-Off 2
