*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Comments ***
Swipe para deslizar até 5m no agendamento

Swipe    536    1964    552    1370


OBS: Variavel btn_umidade possuem o mesmo xpath das opções Led Inficador e Agendamento, com isso foi reaproveitada neste arquivo.
Utilizei a variavel btn_agendamento para ignorar erros onde não seria utilizado as condições "'Menor que', 'Igual a' e 'Maior que'".
*** Test Cases ***
Rotina Bocal - Luz acesa Igual a 5 m
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_bocal}
    E defino as ações do Bocal    ${btn_ligar}    ${btn_umidade}    ${luz_acesa}     ${btn_umidade}    ${btn_agendamento}    536    1964    552    1370    ${btn_salvar}
    E salvo o nome da Rotina    Cond Bocal Luz acesa Igual a 5 m
    Então salvo a rotina

Rotina Bocal - Luz apagada Menor que 5 m
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_bocal}
    E defino as ações do Bocal    ${btn_ligar}    ${btn_umidade}    ${luz_apagada}     ${btn_umidade}    ${btn_menorque}    536    1964    552    1370    ${btn_salvar}
    E salvo o nome da Rotina    Cond Bocal Luz apagada Menor que 5 m
    Então salvo a rotina

Rotina Bocal - Led desligado Maior que 5 m
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_bocal}
    E defino as ações do Bocal    ${btn_ligar}    ${btn_umidade}    ${led_desligado}     ${btn_umidade}    ${btn_maiorque}    536    1964    552    1370    ${btn_salvar}          
    E salvo o nome da Rotina    Cond Bocal Led desligado Maior que 5 m
    Então salvo a rotina

Rotina Bocal - Desligar
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_bocal}
    E defino as ações do Bocal    ${btn_desligar}    ${ignora_erro}    ${ignora_erro}     ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}
    E salvo o nome da Rotina    Cond Desligar bocal
    Então salvo a rotina      