*** Settings ***

Documentation    Smart Interruptor 2 Circuitos
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Interruptor Wi-Fi 2 Circuitos - Ligar C1
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor 2C Ligar Circuito 1
    Então salvo a rotina

Rotina Interruptor Wi-Fi 2 Circuitos - Desligar C1
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor 2C Desligar Circuito 1
    Então salvo a rotina 

Rotina Interruptor Wi-Fi 2 Circuitos - Ligar C2
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Ligar Circuito 2
    Então salvo a rotina

Rotina Interruptor Wi-Fi 2 Circuitos - Desligar C2
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor   ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Desligar Circuito 2
    Então salvo a rotina

Rotina Interruptor Wi-Fi 2 Circuitos - Ligar Todos
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito2}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Ligar 2 Circuitos
    Então salvo a rotina

Rotina Interruptor Wi-Fi 2 Circuitos - Desligar Todos
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito2}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Desligar 2 Circuitos
#     Então salvo a rotina  

Rotina Interruptor Wi-Fi 2 Circuitos - Estado Inicial Ligar
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito3}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito2}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Estado Inicial Ligar
    Então salvo a rotina

Rotina Interruptor Wi-Fi 2 Circuitos - Estado Inicial Desligar
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor_c2}
    E defino as ações do Interruptor    ${btn_circuito3}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}            
    E salvo o nome da Rotina    Interruptor 2C Estado Inicial Desligar
    Então salvo a rotina    


