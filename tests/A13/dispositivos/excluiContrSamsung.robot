*** Settings ***

Documentation    Controle Remoto Samsung

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Removendo controles
    FOR    ${i}     IN RANGE    1    9

    Então excluo o mesmo em seguida

    END