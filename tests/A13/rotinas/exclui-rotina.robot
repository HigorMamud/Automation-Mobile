*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***
Excluindo Cena
    Dado que clico na Guia    ${btn_rotinas}    ${ignora_erro}        
    FOR  ${counter}    IN RANGE    0    1000
    ${valid}    Run Keyword And Return Status    
    ...    Wait Until Page Does Not Contain Element   ${zero_rotina}
        Run Keyword If    ${valid}
        ...    Exit For Loop            
        ...    ELSE    E excluo a cena do teste          
    END
