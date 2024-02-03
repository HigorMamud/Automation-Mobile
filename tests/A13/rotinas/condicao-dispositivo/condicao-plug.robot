*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Comments ***
Padrões de Swipes: Potência
    A23 - ANDROID 13:
    MENOR QUE:    Swipe    427    1718    427    1921
    MAIOR QUE:    Swipe    430    1984    434    1714
    
    0.1 W:        Swipe    657    1960    661    1804
    0.5 W:        Swipe    657    1964    665    1354
    1.0 W:        Swipe    663    1965    643    904

*** Test Cases ***
Rotina com Plug - Condição Potencia Igual a 0.1 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_ligar1}    ${btn_potencia}    0    0    0    0     657    1960    661    1804    ${btn_salvar}   
    E salvo o nome da Rotina    Condição Plug Ligar Igual a 0.1W
    Então salvo a rotina

Rotina com Plug - Condição Menor que 0.5 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_ligar1}    ${btn_potencia}    427    1718    427    1921     657    1964    665    1354    ${btn_salvar}   
    E salvo o nome da Rotina    Condição Plug Ligar Menor que 0.5W
    Então salvo a rotina    

Rotina com Plug - Condição Maior que 1.0 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_ligar1}    ${btn_potencia}    430    1984    434    1714     663    1965    643    904    ${btn_salvar}  
    E salvo o nome da Rotina    Condição Plug Ligar Maior que 1.0W
    Então salvo a rotina      

    
#Desligar
Rotina com Plug - Condição Desligar quando Potencia Igual a 0.1 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_desligar1}    ${btn_potencia}    0    0    0    0     657    1960    661    1804    ${btn_salvar}   
    E salvo o nome da Rotina    Condição Plug Desl Igual a 0.1W
    Então salvo a rotina

Rotina com Plug - Condição Desligar quando Menor que 0.5 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_desligar1}    ${btn_potencia}    427    1718    427    1921     657    1964    665    1354    ${btn_salvar}   
    E salvo o nome da Rotina    Condição Plug Desl Menor que 0.5W
    Então salvo a rotina    

Rotina com Plug - Condição Desligar quando Maior que 1.0 W
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico em adicionar tarefa    ${btn_receber_notif}    ${ignora_rotina}
    E clico em adicionar condição    ${btn_alteracao_dispositivo}
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_conforto_automacao}    ${device_plug}
    E ligo e defino potência    ${btn_desligar1}    ${btn_potencia}    430    1984    434    1714     663    1965    643    904    ${btn_salvar}  
    E salvo o nome da Rotina    Condição Plug Desl Maior que 1.0W
    Então salvo a rotina    