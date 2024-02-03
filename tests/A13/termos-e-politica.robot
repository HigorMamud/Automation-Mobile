*** Settings ***

Resource            ../../resources/base.robot

    
Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo

*** Test Cases ***

Termos de uso
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_sobre_app}
    E sobre o App seleciono opção    ${btn_termos_de_uso}
    Então sou direcionado para pagina com os termos

Politica de privacidade
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_configuracoes_perfil}
    E na Configuração seleciono opção    ${btn_sobre_app}
    E sobre o App seleciono opção    ${btn_politica}
    Então sou direcionado para pagina Politica