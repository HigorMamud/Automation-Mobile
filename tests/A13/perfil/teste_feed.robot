# *** Settings ***

# Resource            ../../../resources/base.robot

# Test Setup    Abrindo aplicativo A13
# Test Teardown    Fechar Aplicativo

# *** Test Cases ***
# Enviar Feedback
#     Dado que estou na tela home
#     E clico em perfil
#     FOR    ${counter}    IN RANGE    0    1
#         Quando clico em Ajuda
#         IF    ${counter}==0
#         E clico na opção Relatar problema
#         E preencho o campo
#         E seleciono o Tipo de problema
#         E seleciono o Dispositivo com problema
#         E clico no botão para Enviar Feedback
#         E preencho o campo de e-mail
#         E clico para enviar o Feedback 
#         Então o Feedback é enviado com sucesso
#         END
#         ${counter}    Evaluate    ${counter}+1 
#         IF    ${counter}==1
#         E clico na opção Relatar problema
#         E preencho os campos 2
#         E seleciono o Tipo de problema 2
#         E clico no botão para Enviar Feedback
#         E preencho o campo de e-mail
#         E clico para enviar o Feedback
#         # Wait Until Element Is Visible    accessibility_id=Feedback enviado    20
#         # Swipe    454    1405    473    1405     "Swipe não funcionou com FOR" --- sem swipe funciona 
#         Então o Feedback é enviado com sucesso
#         END
#         Exit For Loop If    ${counter}==1
#     END
