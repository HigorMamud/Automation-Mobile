*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Camera Wifi 2 - Ligar Sirene, Alerta e Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Ligar todas as opções da câmera    ${btn_ligar1}    ${btn_ligar2}    ${btn_ligar3}
    E salvo o nome da Rotina    Câmera Wifi 2 Ligar Sirene, Alerta e Gravação
    Então salvo a rotina

Rotina com Camera Camera Wifi 2 - Desligar Sirene, Alerta e Gravação
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Desligar todas as opções da câmera    ${btn_desligar1}    ${btn_desligar2}    ${btn_desligar3}
    E salvo o nome da Rotina    Câmera Wifi 2 Desligar Sirene, Alerta e Gravação
    Então salvo a rotina    

Rotina com Camera Wifi 2 - Ligar apenas Sirene
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Ligar apenas    ${btn_ligar1}
    E salvo o nome da Rotina    Câmera Wifi 2 Ligar apenas Sirene   
    Então salvo a rotina

Rotina com Camera Wifi 2 - Desligar apenas Sirene
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Câmera Wifi 2 Desligar apenas Sirene   
    Então salvo a rotina    

Rotina com Camera Wifi 2 - Ligar apenas Alerta de Movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Ligar apenas    ${btn_ligar2}
    E salvo o nome da Rotina    Câmera Wifi 2 Ligar apenas Alerta de Movimento   
    Então salvo a rotina

Rotina com Camera Wifi 2 - Desligar apenas Alerta de Movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Desligar apenas    ${btn_desligar2}
    E salvo o nome da Rotina    Câmera Wifi 2 Desligar apenas Alerta de Movimento   
    Então salvo a rotina    

Rotina com Camera Wifi 2 - Ligar apenas Gravação no SD
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Ligar apenas    ${btn_ligar3}
    E salvo o nome da Rotina    Câmera Wifi 2 Ligar apenas Gravação no SD   
    Então salvo a rotina 

Rotina com Camera Wifi 2 - Desligar apenas Gravação no SD
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_2gen}
    E defino a tarefa para Desligar apenas    ${btn_desligar3}
    E salvo o nome da Rotina    Câmera Wifi 2 Desligar apenas Gravação no SD   
    Então salvo a rotina       




        