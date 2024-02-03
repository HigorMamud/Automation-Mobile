*** Settings ***

Documentation    Smart Interruptor Wifi - Rotina com Condições
Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Comments ***
Padrões de Swipes: Circuitos/Estado
    A23 - ANDROID 13:
        SWIPE LIGADO		          -  Swipe    540    1972    551    1773
        SWIPE DESLIGADO 	          -  Swipe    532    1976    536    1714
        SWIPE ALTERNAR/MANTER ULTIMO  -  Swipe    532    1976    536    1640    

*** Test Cases ***
Rotina Interruptor Wi-Fi 3 Circuitos - Condição Ligar apenas C1
    Dado que clico na Guia     ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Condição Ligar Circuito 1
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Condição Desligar apenas C2
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Condição Desligar Circuito 2
    E desmarco checkbox de todas as condições
    Então salvo a rotina 

Rotina Interruptor Wi-Fi 3 Circuitos - Condição Alternar apenas C3
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito3}    532    1976    536    1650    ${btn_salvar}    
    E salvo o nome da Rotina    Interruptor Condição Alternar Circuito 3
    E desmarco checkbox de todas as condições
    Então salvo a rotina   

Rotina Interruptor Wi-Fi 3 Circuitos - Condição Todos Ligados
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Condição Ligar 3 Circuitos
    E desmarco checkbox de todas as condições
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - Condição Todos Desligados    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Condição Desligar 3 Circuitos
    E desmarco checkbox de todas as condições
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Condição Todos Alternar   
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Condição Alternar 3 Circuitos
    E desmarco checkbox de todas as condições
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - Condição C1 Alternar, C2 Ligar, C3 Desligar    
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1640    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Condição C1 ALTERNAR C2 LIGAR C3 DESLIGAR
    E desmarco checkbox de todas as condições
    Então salvo a rotina

