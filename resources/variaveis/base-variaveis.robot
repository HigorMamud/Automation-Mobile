*** Settings ***

Resource        ../../resources/base.robot

*** Comments ***
Essas variaveis possui variaveis utilizadas em diversos cenários em diferentes telas, tidas como padrões. 

*** Variables ***
${btn_yes}                           accessibility_id=Sim
${btn_login}                         accessibility_id=Entrar com a minha conta
${btn_jump}                          accessibility_id=Pular
${btn_home}                          accessibility_id=Sua casa\nGuia 1 de 4
${btn_rotinas}                       accessibility_id=Rotinas\nGuia 2 de 4
${btn_loja}                          accessibility_id=Loja\nGuia 3 de 4
${btn_perfil}                        accessibility_id=Perfil\nGuia 4 de 4
${textbox_cena}                      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.EditText[3]
${btn_entrar}                        xpath=//android.widget.Button[@content-desc="Entrar"]
${textbox_email}                     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText[1]
${textbox_password}                  xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.widget.EditText[2]
${img_rotina}                        xpath=(//android.view.View[@content-desc="Image rotina"])[1]
${edit_name}                         xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.ScrollView/android.view.View[1]/android.widget.ImageView
${btn_finalizar}                     accessibility_id=Finalizar
${btn_criar_conta}                   xpath=//android.widget.Button[@content-desc="Criar nova conta"]
${btn_facebook}                      accessibility_id=Iniciar sessão com Facebook
${btn_novo_device}                   accessibility_id=Novo dispositivo
${btn_proximo}                        accessibility_id=Próximo
${btn_fechar}                         accessibility_id=Fechar
${btn_voltar}                         accessibility_id=Voltar
${btn_sair}                           accessibility_id=Sair
${btn_cancelar}                       accessibility_id=Cancelar
${btn_confirmar}                      accessibility_id=Confirmar
${btn_excluir}                        accessibility_id=Excluir
${btn_excluir_rotina}                 xpath=//android.widget.Button[@content-desc="Excluir"]
${btn_entendido}                      accessibility_id=Entendido
${btn_salvar}                         accessibility_id=Salvar

# Selecionar caixa de texto para digitar
${textbox_name}                      class=android.widget.EditText 
#pular tutorial
${btn_jump}                          accessibility_id=Pular  