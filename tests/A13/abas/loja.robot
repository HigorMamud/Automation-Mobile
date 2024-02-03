*** Settings ***

Resource            ../../../resources/base.robot
    
Test Setup    Abrindo aplicativo A13    #Samgung A23 Android 13
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Abrindo a loja
    Dado que clico na Guia    ${btn_loja}    ${btn_loja}
    Então a loja é exibida