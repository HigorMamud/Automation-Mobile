*** Settings ***

Resource        ../../resources/base.robot

*** Comments ***
Essas variaveis contemplam os arquivos com cenarios voltados ao agendamento de todos os devices.

*** Variables ***
#Botão da Hora dentro do agendamento do device
${btn_hora_device}                   accessibility_id=Hora
${btn_hora_device1}                  xpath=(//android.view.View[@content-desc="Hora"])[1]  
${btn_hora_ini}                      accessibility_id=Hora inicial
${btn_hora fin}                      accessibility_id=Hora final

#Agendamento dentro do device
#Remover a variavel ${btn_agendamento_robo} quando o elemento for tratado.
${btn_agendamento_robo}              xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.ImageView[1]
${btn_agendamento}                   accessibility_id=Agendamento
${btn_novo_agendamento}              accessibility_id=Novo agendamento
${btn_agen_PROVISORIO}               accessibility_id=Agendamento

#Agendamento ligar/desligar
${checkbox_ligar}                    accessibility_id=Ligar
${checkbox_desligar}                 accessibility_id=Desligar

#Dias de agendamento
${checkbox_dias_da_semana}            accessibility_id=Dias da semana
${checkbox_todos_os_dias}             accessibility_id=Todos os dias
${checkbox_domingo}                   accessibility_id=Dom
${checkbox_segunda}                   accessibility_id=Seg
${checkbox_terca}                     accessibility_id=Ter
${checkbox_quarta}                    accessibility_id=Qua
${checkbox_quinta}                    accessibility_id=Qui
${checkbox_sexta}                     accessibility_id=Sex
${checkbox_sabado}                    accessibility_id=Sáb

#Notificação de execução dentro do agendamento
${checkbox_notif_execucao}           accessibility_id=Notificação de Execução

#Exclusão de agendamento
${manter_press_ag1}                  xpath=(//android.widget.CheckBox[@content-desc="switch"])[1]
${manter_press_ag}                   xpath=(//android.widget.CheckBox[@content-desc="switch"])
