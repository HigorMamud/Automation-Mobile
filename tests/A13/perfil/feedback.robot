*** Settings ***

Resource            ../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Enviar Feedback
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_ajuda}
    E clico na opção Relatar problema
    E preencho o campo
    E seleciono o Tipo de problema
    E seleciono o Dispositivo com problema
    E clico no botão para Enviar Feedback
    E preencho o campo de e-mail
    E clico para enviar o Feedback
    Wait Until Element Is Visible    accessibility_id=Feedback enviado    20
    Swipe    454    1405    473    1405   
    Então o Feedback é enviado com sucesso

Enviar Feedback outros
    Dado que estou na tela home
    Dado que clico na Guia    ${btn_perfil}    ${btn_ajuda}
    E clico na opção Relatar problema
    E preencho os campos 2
    E seleciono o Tipo de problema 2
    E clico no botão para Enviar Feedback
    E preencho o campo de e-mail
    E clico para enviar o Feedback
    Wait Until Element Is Visible    accessibility_id=Feedback enviado    20
    Swipe    454    1405    473    1405   
    Então o Feedback é enviado com sucesso
