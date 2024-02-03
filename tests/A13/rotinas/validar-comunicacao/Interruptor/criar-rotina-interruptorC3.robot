*** Settings ***

Documentation    Smart Interruptor 3 Circuitos
Resource            ../../../../../resources/base.robot

Test Setup        Abrindo aplicativo A13
Task Teardown     Fechar Aplicativo

*** Test Cases ***
Rotina Interruptor Wi-Fi 3 Circuitos - Ligar apenas C1
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Ligar Circuito 1
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Desligar apenas C1
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Desligar Circuito 1
    Então salvo a rotina


Rotina Interruptor Wi-Fi 3 Circuitos - Ligar apenas C2
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Ligar Circuito 2
    Então salvo a rotina


Rotina Interruptor Wi-Fi 3 Circuitos - Desligar apenas C2
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Desligar Circuito 2
    Então salvo a rotina 

Rotina Interruptor Wi-Fi 3 Circuitos - Ligar apenas C3
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito3}    540    1972    551    1773    ${btn_salvar}    
    E salvo o nome da Rotina    Interruptor Ligar Circuito 3
    Então salvo a rotina   

Rotina Interruptor Wi-Fi 3 Circuitos - Desigar apenas C3
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito3}    532    1976    536    1714    ${btn_salvar}    
    E salvo o nome da Rotina    Interruptor Desligar Circuito 3
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - Todos Ligados
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Ligar 3 Circuitos
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - Todos Desligados    
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Desligar 3 Circuitos
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Estado inicial Ligar 
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_estado_ini}    532    1976    536    1650    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}
    E salvo o nome da Rotina    Interruptor Estado Inicial Ligar 3 Circuitos
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Estado inicial Desligar 
    Dado que crio uma Rotina
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_estado_ini}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}
    E salvo o nome da Rotina    Interruptor Estado Inicial Desligar 3 Circuitos
    Então salvo a rotina     
    



