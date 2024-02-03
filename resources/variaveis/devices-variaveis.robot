*** Settings ***

Resource        ../../resources/base.robot


*** Comments ***
Este arquivo contempla variaveis de todos os Devices da Home e ações dentro de cada device exceto Agendamento.
OBS: Variaveis validas para selecionar os devices dentro da criação das Rotinas. 

- Editar nomes
- Ações no device


*** Variables ***
#Clicar nos devices na home (nomes oficiais, necessários editar na actions dos devices)
${device_lampada_rgb+}                accessibility_id=Smart Lâmpada WiFi RGB+
${device_lampada_wifi}                accessibility_id=Smart Lâmpada WiFi
${device_lampada_retro}               accessibility_id=Smart Lâmpada Retrô WiFi 
${device_lampada_lite}                accessibility_id=Smart Lâmpada WiFi Lite
${device_spot_embutir}                accessibility_id=Smart Luminária Spot de Embutir
${device_spot}                        accessibility_id=Smart Lâmpada WiFi Spot
${device_luminaria}                   accessibility_id=Smart Luminária de Mesa WiFi
${device_fita_multi}                  accessibility_id=Smart Fita LED Multi Temperatura
${device_fita_rgb}                    accessibility_id=Smart Fita LED RGB
${device_fita_rgb2}                   accessibility_id=Smart Fita LED RGB Wi-Fi 2ª Geração
${device_interruptor}                 accessibility_id=Smart Interruptor WiFi
${device_interruptor_c1}              accessibility_id=Smart Interruptor WiFi 1 Circuito
${device_interruptor_c2}              accessibility_id=Smart Interruptor WiFi 2 Circuitos    
${device_painel}                      accessibility_id=Smart Painel LED WiFi
${device_bocal}                       accessibility_id=Smart Bocal WiFi
${device_cam_wifi}                    accessibility_id=Smart Câmera WiFi
${device_cam_360}                     accessibility_id=Smart Câmera 360 WiFi
${device_cam_bot_v1}                  accessibility_id=Smart Câmera Bot Wi-Fi
${device_cam_bot_v2}                  accessibility_id=Smart Câmera Bot 2ª Geração
${device_cam_bateria2}                accessibility_id=Smart Câmera WiFi com Bateria
${device_cam_bateria}                 accessibility_id=Câmera Bateria ANTIGA
${device_cam_2gen}                    accessibility_id=Smart Câmera WiFi 2ª Geração
${device_cam_externa}                 accessibility_id=Smart Câmera Externa Wi-Fi
${device_porteiro}                    accessibility_id=Smart Video Porteiro Wi-Fi
${device_plug}                        accessibility_id=Smart Plug WiFi
${device_controle}                    accessibility_id=Smart Controle Universal
${device_botao}                       accessibility_id=Smart Botão
${device_robo_laser}                  accessibility_id=Smart Robô Aspirador WiFi Laser
${device_sensor_ble}                  accessibility_id=Smart Sensor de Abertura
${device_fechadura}                   accessibility_id=Smart Fechadura
${device_lampada_retro_ble}           accessibility_id=Smart Lâmpada Retrô WiFi BLE
${device_spot_BLE}                    accessibility_id=Smart Lâmpada WiFi Spot BLE
${device_lampada_meka}                accessibility_id=Smart Lâmpada WiFi Meka  

#devices nome editado
${device_edit_lampada_rgb+}           accessibility_id=Smart Lâmpada WiFi RGB+ Teste QA
${device_edit_lampada_wifi}           accessibility_id=Smart Lâmpada WiFi Teste QA
${device_edit_lampada_retro}          accessibility_id=Smart Lâmpada WiFi Retrô Teste QA
${device_edit_lampada_lite}           accessibility_id=Smart Lâmpada WiFi Lite Teste QA
${device_edit_spot_embutir}           accessibility_id=Smart Luminária Spot de Embutir Teste QA
${device_edit_spot}                   accessibility_id=Smart Lâmpada WiFi Spot Teste QA
${device_edit_luminaria}              accessibility_id=Smart Luminária de Mesa WiFi Teste QA
${device_edit_fita_multi}             accessibility_id=Smart Fita LED Multi Temperatura Teste QA
${device_edit_fita_rgb}               accessibility_id=Smart Fita LED RGB Teste QA
${device_edit_interruptor}            accessibility_id=Smart Interruptor WiFi Teste QA
${device_edit_painel}                 accessibility_id=Smart Painel LED WiFi Teste QA
${device_edit_bocal}                  accessibility_id=Smart Bocal WiFi Teste QA
${device_edit_cam_wifi}               accessibility_id=Smart Câmera WiFi Teste QA
${device_edit_cam_360}                accessibility_id=Smart Câmera 360° WiFi Teste QA
${device_edit_cam_bot_v1}             accessibility_id=Smart Câmera Bot WiFi Teste QA
${device_edit_cam_bot_v2}             accessibility_id=Smart Câmera Bot 2ª Geração Teste QA
${device_edit_cam_bateria}            accessibility_id=Smart Câmera WiFi com Bateria Teste QA
${device_edit_cam_2gen}               accessibility_id=Smart Câmera WiFi 2ª Geração Teste QA
${device_edit_porteiro}               accessibility_id=Vídeo Porteiro WiFi Teste QA
${device_edit_plug}                   accessibility_id=Smart Plug WiFi Teste QA
${device_edit_robo_laser}             accessibility_id=Smart Robô Aspirador WiFi Laser Teste QA


##################################################################################AÇÕES-PRIMARIAS###########################################################################################


# Botão de configurações dentro do device
${btn_configuracoes}                 accessibility_id=Configurações
${btn_configuracoes_bocal}           xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView[2]
${btn_nome_dispositivo}              accessibility_id=Nome do dispositivo Editar
${btn_editar_nome}                   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View/android.view.View[1]/android.widget.EditText
${btn_config_PROVISORIO}             accessibility_id=Configurações

# Salvar edição do nome
${textbox_nome}                      xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.widget.EditText
${btn_salvar_nome}                   xpath=//android.view.View[@content-desc="Nome do dispositivo"]/android.view.View


#####################################################################################ILUMINAÇÃO###########################################################################################


#Variaveis da tela de efeitos
${btn_agrupar}                          accessibility_id=Agrupar
${btn_on/off}                           accessibility_id=On/Off
${btn_timer}                            accessibility_id=Timer
${btn_noite}                            accessibility_id=Noite
${btn_leitura}                          accessibility_id=Leitura
${btn_trabalho}                         accessibility_id=Trabalho 
${btn_lazer}                            accessibility_id=Lazer
${btn_suave}                            accessibility_id=Suave
${btn_festa}                            accessibility_id=Festa
${btn_diversao}                         accessibility_id=Diversão
${btn_multicolorido}                    accessibility_id=Multicolorido
${btn_editar_efeito}                    accessibility_id=Editar efeito


#####################################################################################INTERRUPTORES#######################################################################################


#Botões Todos e Uma vez do device Interruptor
${agenda_interruptor}                accessibility_id=Agenda
${tempo_ciclo_inter}                 accessibility_id=Tempo de ciclo
${tempo_aleat_inter}                 accessibility_id=Aleatório
${checkbox_uma_vez}                  accessibility_id=Uma vez
${checkbox_todos}                    accessibility_id=Selecione
${estado_inicial}                    accessibility_id=Estado inicial
${checkbox_selec_todos}              accessibility_id=Selecione, Selecione todos

#Botões dos circuitos do Interruptor
${checkbox_circuito1}                xpath=(//android.widget.Button[@content-desc="Selecione"])[1]
${checkbox_circuito2}                xpath=(//android.widget.Button[@content-desc="Selecione"])[2]

#Circuitos Interruptor - Agendamento - Agenda
${interruptor_c1_ag}    accessibility_id=Selecione, Selecione 0
${interruptor_c2_ag}    accessibility_id=Selecione, Selecione 1
${interruptor_c3_ag}    accessibility_id=Selecione, Selecione 2

#Circuitos Interruptor - Agendamento - Tempo de Ciclo e Aleatório
${interruptor_c1}        accessibility_id=Desmarcado, Circuito 0
${interruptor_c2}        accessibility_id=Desmarcado, Circuito 1
${interruptor_c3}        accessibility_id=Desmarcado, Circuito 2



#####################################################################################CAMERA#############################################################################################


#Camera
${btn_gravacoes}                      accessibility_id=Gravações
${btn_config_sd}                      accessibility_id=Configurações do cartão SD
${btn_agenda}                         accessibility_id=Agenda
${btn_atv_gravacao_sd}                accessibility_id=Ativar gravação no cartão SD
${btn_para_gravacao_sd}               accessibility_id=Parar gravação no cartão SD
${titulo_agendar}                     accessibility_id=Agendar
${notif_grava_ini}
${notif_grava_salva}   
${btn_deteccao}                       accessibility_id=Detecção
${mov_detec}                          xpath=//android.widget.ImageView[@content-desc="Alerta de Movimento"]/android.view.View/android.widget.CheckBox
#${mov_detec}                         xpath=//android.widget.ImageView[@content-desc="Sensibilidade da detecção de movimento"]/android.view.View/android.widget.CheckBox
${mov_detec1}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.widget.CheckBox
${mov_detec2}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[8]/android.widget.CheckBox
${toc_campainha}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[2]/android.view.View/android.view.View/android.view.View[2]/android.widget.CheckBox  

#Elemento do botão gravar esta puxando os outros dois botões que ficam próximos. Não afeta e execução da gravação, porém afeta os outros dois botões. 
${btn_gravar}                         xpath=//android.widget.ImageView[@content-desc="Falar\nGravar\nSirene\nFotografar"]/android.widget.ImageView[2]    
${config_camera}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView
${btn_return_tela_cam}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button 

#Elementos Detecção da camera
${atv_area_detec}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View/android.view.View/android.view.View/android.view.View[5]/android.widget.CheckBox
${area_detec}        accessibility_id=Área de detecção


#####################################################################################CONTROLE REMOTO######################################################################################


${device_tv}                          accessibility_id=TV
${device_tvbox}                       accessibility_id=TV Box
${device_ar}                          accessibility_id=Ar Condicionado
${device_settopbox}                   accessibility_id=Set-top-box
${device_som}                         accessibility_id=Loudspeaker

${add_controleR}                      accessibility_id=Adicionar controle remoto
${textbox_controleR}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ImageView             
${samsung}                            accessibility_id=Samsung

${canal_mais}                         xpath=//android.widget.Button[@content-desc="Canal Mais " or @content-desc="Canal Mais , Desativado"] 
${canal_menos}                        xpath=//android.widget.Button[@content-desc="Canal Menos " or @content-desc="Canal Menos , Desativado"] 
${volume_mais}                        xpath=//android.widget.Button[@content-desc="Volume Mais " or @content-desc="Volume Mais , Desativado"] 
${volume_menos}                       xpath=//android.widget.Button[@content-desc="Volume Menos " or @content-desc="Volume Menos , Desativado"]
${btn_mudo}                           xpath=//android.widget.Button[@content-desc="Mudo, Desativado" or @content-desc="Mudo"]  
${btn_voltar_controle}                xpath=//android.widget.Button[@content-desc="Voltar, Desativado" or @content-desc="Voltar, Ativado"]
${btn_escolher}                       accessibility_id=Escolher
${exclui_controle}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.widget.TextView
${home_controle}                      xpath=//android.widget.Button[@content-desc="Home, Desativado" or @content-desc="Home"]
${btn_cima_tv}                        xpath=//android.widget.Button[@content-desc="Cima" or @content-desc="Cima, Desativado"]
${btn_baixo_tv}                       xpath=//android.widget.Button[@content-desc="Baixo" or @content-desc="Baixo, Desativado"]
${btn_esquerda_tv}                    xpath=//android.widget.Button[@content-desc="Esquerda" or @content-desc="Esquerda, Desativado"]
${btn_direita_tv}                     xpath=//android.widget.Button[@content-desc="Direita" or @content-desc="Direita, Desativado"]
${btn_ok_tv}                          xpath=//android.widget.Button[@content-desc="OK" or @content-desc="OK, Desativado"]
${title_controle}                     accessibility_id=Adicionar novo controle
${device_control_tv}                  xpath=(//android.widget.ImageView[@content-desc="TV"])[1]
${controle_funcoes}                   accessibility_id=--
${ignora_botao}                       accessibility_id=Funções do controle
${intervalo}                          xpath=(//android.widget.Button[@content-desc="intervalo"])[1]
${btn_menu_control}                   xpath=//android.widget.Button[@content-desc="Menu" or @content-desc="Menu, Desativado"]

#Tela controle - Tuya
${title_control_tuya}                 id=com.positivo.casainteligente:id/tv_title
#Botão retornar na tela do controle é da Tuya
${btn_return_tela_control}            xpath/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.ImageView


#Controle TV - TV Box
${tv_OnOff}                           accessibility_id=Ligar/\nDesligar
${tv_cima}                            accessibility_id=Para cima
${tv_direita}                         accessibility_id=Direita
${tv_esquerda}                        accessibility_id=Esquerda
${tv_baixo}                           accessibility_id=Para baixo
${tv_ok}                              accessibility_id=OK
${tv_canal+}                          accessibility_id=Canal +
${tv_canal-}                          accessibility_id=Canal -
${tv_volume+}                         accessibility_id=Volume +
${tv_volume-}                         accessibility_id=Volume -
${tv_home}                            accessibility_id=Home
${tv_voltar}                          accessibility_id=Voltar
${tv_mutar}                           accessibility_id=Mutar
${tv_1}                               accessibility_id=1
${tv_2}                               accessibility_id=2
${tv_3}                               accessibility_id=3
${tv_4}                               accessibility_id=4
${tv_5}                               accessibility_id=5
${tv_6}                               accessibility_id=6
${tv_7}                               accessibility_id=7
${tv_8}                               accessibility_id=8
${tv_9}                               accessibility_id=9
${tv_0}                               accessibility_id=0
${tv_sair}                            accessibility_id=sair
${play}			                      accessibility_id=Play
${pause}			                  accessibility_id=Pause
${menu}                               accessibility_id=Menu

#Controle Som
${mudo}                               accessibility_id=mudo
${mute}                               accessibility_id=mute
${parar}                              accessibility_id=parar
${play2}                              accessibility_id=play
${pause}                              accessibility_id=Pause
${pausa}                              accessibility_id=pausa
${proximo2}                           accessibility_id=próximo
${hdmi}                               accessibility_id=hdmi
${graves_pesados}                     accessibility_id=graves pesados
${selecao_entrada}                    accessibility_id=seleção de entrada
${fibra_otica}                        accessibility_id=fibra ótica
${coaxial}                            accessibility_id=coaxial
${reverberation}                      accessibility_id=reverberation

#Controle Ar condicionado
${diminuir}                            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[3]/android.widget.ImageView[1]
${aumentar}                            xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View[3]/android.widget.ImageView[2]
${refrescar}                           accessibility_id=Refrescar
${aquecer}                             accessibility_id=Aquecer
${ventilar}                            accessibility_id=Ventilar
${baixa}                               accessibility_id=Baixa
${media}                               accessibility_id=Média
${alta}                                accessibility_id=Alta
${automatico1}                         xpath=(//android.widget.Button[@content-desc="Automático"])[1]
${automatico2}                         xpath=(//android.widget.Button[@content-desc="Automático"])[2]