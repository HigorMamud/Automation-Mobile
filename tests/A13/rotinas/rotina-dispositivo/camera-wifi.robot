*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Camera Wifi - Ligar Alerta e Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino as duas tarefas para Ligar    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Câmera Wifi Ligar Alerta e Gravação
    Então salvo a rotina

Rotina com Camera Camera Wifi - Desligar Alerta e Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino as duas tarefas para Ligar    ${btn_desligar1}    ${btn_desligar2}
    E salvo o nome da Rotina    Câmera Wifi Desligar Alerta e Gravação
    Então salvo a rotina

Rotina com Camera Camera Wifi - Ligar apenas Alerta de Movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino a tarefa para Ligar apenas    ${btn_ligar1}
    E salvo o nome da Rotina    Câmera Wifi Ligar Alerta de Movimento
    Então salvo a rotina    

Rotina com Camera Camera Wifi - Desligar apenas Alerta de Movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino a tarefa para Ligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Câmera Wifi Desligar Alerta de Movimento
    Então salvo a rotina    

Rotina com Camera Camera Wifi - Ligar apenas Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino a tarefa para Ligar apenas    ${btn_ligar2}
    E salvo o nome da Rotina    Câmera Wifi Ligar Gravação
    Então salvo a rotina    

Rotina com Camera Camera Wifi - Desligar apenas Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_wifi}
    E defino a tarefa para Ligar apenas    ${btn_desligar2}
    E salvo o nome da Rotina    Câmera Wifi Desligar Gravação
    Então salvo a rotina          

