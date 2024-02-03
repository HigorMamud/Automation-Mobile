*** Settings ***

Resource            ../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Editar efeitos
    Dado que entro em lãmpada
    Então salvo efeito editado