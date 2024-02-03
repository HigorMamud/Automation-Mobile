*** Settings ***

Resource        ../../resources/base.robot

*** Comments ***
Essas variaveis contemplam os arquivos com cenarios da tela de gerenciamento de locais.

*** Variables ***
#Veja todos os devices
${btn_home_local}                     accessibility_id=Veja todos os dispositivos Expandir
# home "..."
${btn_home_opcoes}                    accessibility_id=Visualização da home
${btn_alterar_visualizacao}           accessibility_id=Alterar formato de \nvisualização

#Ambientes
${btn_novo_ambiente}                  xpath=//android.widget.Button[@content-desc="Adicionar novo ambiente"]
${btn_salvar_ambiente}                xpath=//android.widget.Button[@content-desc="Salvar novo ambiente"]
${ambiente_salvo}                     accessibility_id=Automação\n0 dispositivos

#Membros
${btn_add_membro}                     xpath=//android.widget.Button[@content-desc="Adicionar novo membro"]
${env_convite}                        accessibility_id=Enviar convite
${btn_aceitar}                        accessibility_id=Aceitar
${btn_remove_membro}                  accessibility_id=Remover membro

#Botão dentro de Configurações do app no Perfil
${btn_sobre_app}                      accessibility_id=Sobre o app

${cod1}    512        
${cod2}    1711            
${cod3}    590
${cod4}    253


#Variaveis Gerenciar Locais
${textbox_local}                        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.view.View[1]/android.widget.EditText
${btn_localizacao}                      accessibility_id=Localização
${btn_meulocal}                         accessibility_id=Localização\nMeu local