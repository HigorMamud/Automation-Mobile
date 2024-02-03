*** Settings ***

Resource            ../../../resources/base.robot

Test Setup    Abrindo aplicativo A13
Test Teardown    Fechar Aplicativo

*** Test Cases ***
Criar Rotina de Cena
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_iluminacao}    ${device_lampada_wifi}
    E defino as opções de Iluminação    ${btn_ligar}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${btn_selecionar_modo}    ${btn_modo_efeitos}    ${btn_salvar}
    E salvo o nome da Rotina    Wifi Ligar-Efeitos
    Então a rotina é salva com sucesso

Executa Automação
    Dado que clico na Guia    ${btn_rotinas}    ${ignora_erro}  
    E executo a cena    ${textbox_busque_aqui}    Wifi Ligar-Efeitos          
    Então sou notificado