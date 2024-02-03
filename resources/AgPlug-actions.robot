*** Settings ***

Resource        ../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar aplicativo

*** Test Cases ***
Agendamento PLUG Ligado - Uma vez
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Ligar - Uma vez
    Então o agendamento é criado

Agendamento PLUG Ligado - Dias da semana
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Ligar - Dias da semana
    Então o agendamento é criado

Agendamento PLUG Ligado - Seg Qua Sex
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Ligar - Seg Qua Sex
    Então o agendamento é criado

Agendamento PLUG Ligado - Ter Qui
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Ligar - Ter Qui
    Então o agendamento é criado    
    
Agendamento PLUG Ligado - Todos os dias
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Ligar - Todos os Dias
    Então o agendamento é criado

Agendamento PLUG Desligado - Uma vez
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Desligar - Uma vez
    Então o agendamento é criado

Agendamento PLUG Desligado - Dias da semana
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Desligar - Dias da semana
    Então o agendamento é criado
    
Agendamento PLUG Desligado - Seg Qua Sex
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Desligar - Seg Qua Sex
    Então o agendamento é criado

Agendamento PLUG Desligado - Ter Qui
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Desligar - Ter Qui
    Então o agendamento é criado

Agendamento PLUG Desligado - Todos os dias
    Dado que clico no PLUG Max
    E realizo um novo agendamento
    Quando defino Desligar - Todos os Dias
    Então o agendamento é criado