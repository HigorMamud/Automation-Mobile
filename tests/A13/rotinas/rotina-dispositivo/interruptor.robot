*** Settings ***

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
Rotina Interruptor Wi-Fi 3 Circuitos - Ligar apenas C1
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Ligar Circuito 1
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Desligar apenas C2
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito2}    532    1976    536    1714    ${btn_salvar}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    
    E salvo o nome da Rotina    Interruptor Desligar Circuito 2
    Então salvo a rotina 

Rotina Interruptor Wi-Fi 3 Circuitos - Alternar apenas C3
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${ignora_erro}    0    0    0    0    ${ignora_erro}    ${btn_circuito3}    532    1976    536    1650    ${btn_salvar}    
    E salvo o nome da Rotina    Interruptor Alternar Circuito 3
    Então salvo a rotina   

Rotina Interruptor Wi-Fi 3 Circuitos - Todos Ligados
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Ligar 3 Circuitos
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - Todos Desligados    
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Desligar 3 Circuitos
    Então salvo a rotina

Rotina Interruptor Wi-Fi 3 Circuitos - Todos Alternar   
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1654    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor Alternar 3 Circuitos
    Então salvo a rotina    

Rotina Interruptor Wi-Fi 3 Circuitos - C1 Alternar, C2 Ligar, C3 Desligar    
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_interruptor}
    E defino as ações do Interruptor    ${btn_circuito1}    532    1976    536    1640    ${btn_salvar}    ${btn_circuito1}    540    1972    551    1773    ${btn_salvar}    ${btn_circuito1}    532    1976    536    1714    ${btn_salvar}
    E salvo o nome da Rotina    Interruptor C1 ALTERNAR C2 LIGAR C3 DESLIGAR
    Então salvo a rotina    