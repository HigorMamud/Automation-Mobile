*** Settings ***

Resource        ../../resources/base.robot

*** Comments ***
Essas variaveis contemplam os arquivos com cenarios que manipulam a tela e menus do "Perfil"

*** Variables ***
#Perfil
${tittle_gerenciar}                    accessibility_id=Gestão de locais
${usuario_locais}                      accessibility_id=Teste\nUsuário
${btn_gerenciar_locais}                accessibility_id=Gerenciar Locais
${btn_gerenciar_locais1}               accessibility_id=Gerenciar locais
${textbox_ambiente}                    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[3]/android.widget.EditText
${btn_adicionar_locais}                accessibility_id=Adicionar novo local
${btn_salvar_local}                    accessibility_id=Salvar novo local
${btn_remover_local}                   accessibility_id=Remover local
${btn_editar_nome_local}               accessibility_id=Editar
${textbox_edit_nome_local}             xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View[3]/android.view.View[1]/android.widget.EditText

${btn_notificacoes}                    accessibility_id=Notificações
${btn_excluir_notificacoes}            accessibility_id=Excluir
${btn_selecionar_todos}                accessibility_id=Selecionar todos
${btn_notificações}                    accessibility_id=Notificações
${btn_atualizaçoes}                    accessibility_id=Atualizações\nGuia 2 de 3
${btn_alarme}                          accessibility_id=Alarme\nGuia 1 de 3
${btn_selecionar_notificacao}          xpath=(//android.widget.ImageView[@content-desc="Selecionar notificação"])[1]
${toast_sucesso}                       accessibility_id=Notificações excluídas com sucesso


${btn_serviços_de_nuvem}               accessibility_id=Serviços de nuvem
${btn_ajuda}                           accessibility_id=Ajuda
${btn_duvidas_frequentes}              accessibility_id=Dúvidas frequentes
${btn_relatar_problemas}               accessibility_id=Relatar problema
${btn_acompanhar_requisicoes}          accessibility_id=Acompanhar requisições

${btn_conexões_assistentes}            accessibility_id=Conexões com assistentes
${btn_desconect_assist}                xpath=(//android.widget.Button[@content-desc="Desconectar"])[1]
${btn_desvinculo_assistente}           id=com.positivo.casainteligente:id/thing_social_auth_de_authorize
${btn_desvinculo_alexa}                accessibility_id=Desconectar
${btn_confirmar_desvinculo}            accessibility_id=dialog_confirm
${conect_google}                       accessibility_id=Conectar 
${conect_alexa}                        xpath=(//android.widget.Button[@content-desc="Conectar"])[2]
${sair_assistente}                     accessibility_id=toolbar_navigation

${btn_configuracoes_perfil}            accessibility_id=Configurações
${btn_termos_de_uso}                   accessibility_id=Termos de uso
${btn_politica}                        accessibility_id=Política de privacidade
${btn_configuracoes_notificacao}       accessibility_id=Configurações de notificação
${btn_notificacao_push}                accessibility_id=Notificações Push

${btn_sair_da_conta}                   accessibility_id=Sair da minha conta
