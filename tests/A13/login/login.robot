*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Acessando o aplicativo
    Dado que estou na tela inicial do aplicativo
    Quando clico no botão para entrar com a minha conta
    # E digito o e-mail  positivotesteqa@gmail.com
    # E digito o e-mail    lapisdasilva226@gmail.com
    E digito o e-mail    pcidevicesvirtuais@gmail.com
    E digito a senha  Positivo123
    E clico no botão entrar
    Então sou direcionado para home

# Realizando o logout 
#     # Dado que estou logado no App
#     Quando clico em perfil
#     Então realizo o logout


# Logando com senha incorreta
#     Dado que estou na tela inicial do aplicativo
#     Quando clico no botão para entrar com a minha conta
#     E digito o e-mail  softwarecasapositivo@gmail.com
#     E digito a senha  Positivo000
#     E clico no botão entrar
#     Então é retornando que a conta ou senha esta incorreta

# Politica de privacidade
#     Dado que estou na tela inicial do aplicativo
#     Quando clico no botão para entrar com a minha conta
#     E clico na Politica de privacidade
#     Então é exibido a politica de privacidade