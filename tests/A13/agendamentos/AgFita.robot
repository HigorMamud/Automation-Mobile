*** Settings ***

Resource            ../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento Fita RBG ligada - Uma vez
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é criado com sucesso

Agendamento Fita RGB desligada - Uma vez
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita RGB ligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é criado com sucesso

Agendamento Fita RGB desligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita RGB ligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é criado com sucesso

Agendamento Fita RGB desligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é criado com sucesso 

Agendamento Fita RGB ligado - Dias da semana
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é criado com sucesso 

Agendamento Fita RGB desligado - Dias da semana
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita RGB ligado - Todos os dias
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é criado com sucesso  

Agendamento Fita RGB desligado - Todos os dias
    Dado que clico no botão    ${device_fita_rgb}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é criado com sucesso    

##CCT
Agendamento Fita CCT ligada - Uma vez
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Repetir só uma vez - Ligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Uma vez
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Repetir só uma vez - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Seg Qua Sex
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Seg Qua Sex
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Seg Qua Sex - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Ter Qui - Ligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligada - Ter Qua Qui
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Ter Qui - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligado - Dias da semana
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Dias uteis da semana
    Então o agendamento é criado com sucesso

Agendamento Fita CCT desligado - Dias da semana
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Dias uteis da semana - Desligar
    Então o agendamento é criado com sucesso

Agendamento Fita CCT ligado - Todos os dias
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Todos os dias
    Então o agendamento é criado com sucesso  

Agendamento Fita CCT desligado - Todos os dias
    Dado que clico no botão    ${device_fita_multi}
    Quando realizo o agendamento - Todos os dias - Desligar
    Então o agendamento é criado com sucesso