*** Settings ***


Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Variables ***
${local}                               xpath=//android.widget.ImageView[@content-desc="Teste Automação\nMeu local"]
${local_edit}                          xpath=//android.widget.ImageView[@content-desc="Teste Automação- Teste Au\nMeu local"]
${vazio}
${atencao}                             accessibility_id=Você não tem permissão para alterar a localização

*** Test Cases ***
Adicionando Local
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando seleciono/adiciono o local    ${btn_adicionar_locais}    ${tittle_gerenciar}    ${textbox_local}    Teste Automação    ${btn_salvar}    ${btn_meulocal}    ${btn_confirmar_endereco}     
    # E clico em Adicionar novo local
    Então salvo com sucesso
    

Editando local - Editando nome do local
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando seleciono/adiciono o local    ${local}    ${btn_editar_nome_local}    ${textbox_edit_nome_local}     - Teste Automação - Editado    ${btn_salvar}    ${btn_meulocal}    ${btn_confirmar_endereco}
    Então a alteração é realizada
    
Adicionando Ambiente
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando adiciono/aceito o membro no local    ${local_edit}    ${btn_novo_ambiente}    Nome do ambiente     Automação    Automação, Nome do ambiente    ${vazio}    ${btn_salvar_ambiente}
    Então o ambiente é adicionado com sucesso

Adicionando membro    
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando adiciono/aceito o membro no local    ${local_edit}    ${btn_add_membro}    E-mail do convidado    softwarecasapositivo@gmail.com    Nome    Teste    ${env_convite}
    Então é exibido o convite pendente     

Realizando o logout e login 
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_sair}
    Então realizo o logout

Acessando o aplicativo
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com a minha conta
    E digito o e-mail  softwarecasapositivo@gmail.com
    E digito a senha  Positivo123
    E clico no botão entrar
    Então sou direcionado para home

Aceitando convite    
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando adiciono/aceito o membro no local    ${local_edit}    ${btn_aceitar}    ${tittle_gerenciar}    ${null}    ${tittle_gerenciar}    ${null}    ${btn_home}
    Então é notificado que o membro foi adicionado

Alterar Local - Sem permissão
    Dado que clico na Guia    ${btn_home_local}    ${btn_gerenciar_locais}
    Quando adiciono/aceito o membro no local    ${local_edit}    ${btn_meulocal}    ${tittle_gerenciar}    ${null}    ${tittle_gerenciar}    ${null}    ${atencao}
    Então é retornando que não tem permissão para alterar    

#Repetindo cenário para retornar a conta padrão de automação
Realizando o logout e login - Resetando
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_sair}
    Então realizo o logout

Acessando o aplicativo - Resetando
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com a minha conta
    E digito o e-mail  positivotesteqa@gmail.com
    E digito a senha  Positivo123
    E clico no botão entrar
    Então sou direcionado para home


# Removendo membro
#     Dado que estou logado no App
#     E clico em Veja todos os dispositivos
#     Quando clico no botão Gerenciar locais
#     E seleciono o local
#     E removo o membro Teste
#     Então o membro é removido    



# # Removendo ambiente    





# Tornando membro administrador
#     Dado que estou logado no App
#     E clico em Veja todos os dispositivos
#     Quando clico no botão Gerenciar locais
#     E seleciono o local
#     E clico no membro

    



# # ------------------------------------------------------------PROBLEMAS COM ELEMENTOS------------------------------------------------




