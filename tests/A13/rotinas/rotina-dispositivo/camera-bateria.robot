*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Camera Bateria - Ligar Detecção Corpo e Movimento - Sensibilidade 50% - visão auto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar    ${btn_selecionar_modo}    ${btn_auto}    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det Mov/Det Corp - Sensi 50% - visão auto
    Então salvo a rotina

Rotina com Camera Bateria - Ligar Detecção de Movimento - Sensibilidade 50% - visão auto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Movimento    ${btn_selecionar_modo}    ${btn_auto}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det Mov - Sensi 50% - visão auto
    Então salvo a rotina 

Rotina com Camera Bateria - Ligar Detecção de Corpo - visão auto
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Corpo    ${btn_selecionar_modo}    ${btn_auto}    ${btn_ligar1}
    E salvo o nome da Rotina    Cam Bateria ON Det Corp - visão auto
    Então salvo a rotina      

Rotina com Camera Bateria - Ligar Detecção Corpo e Movimento Sensibilidade 50% - visão off
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar    ${btn_selecionar_modo}    ${btn_desligado}    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det Mov/Det Corp - Sensi 50% - visão off
    Então salvo a rotina

Rotina com Camera Bateria - Ligar Detecção de Movimento Sensibilidade 50% - visão off
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Movimento    ${btn_selecionar_modo}    ${btn_desligado}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det Mov - Sensi 50% - visão off
    Então salvo a rotina 

Rotina com Camera Bateria - Ligar Detecção de Corpo - visão off
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Corpo    ${btn_selecionar_modo}    ${btn_desligado}    ${btn_ligar1}
    E salvo o nome da Rotina    Camera Bateria ON Det Corp - visão off 
    Então salvo a rotina    

Rotina com Camera Bateria - Ligar Detecção Corpo e Movimento Sensibilidade 50% - visão on
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar    ${btn_selecionar_modo}    ${btn_ligado}    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det mov/Det Corp - Sensi 50% - visão on
    Então salvo a rotina

Rotina com Camera Bateria - Ligar Detecção de Movimento - Sensibilidade 50% - visão on
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Movimento    ${btn_selecionar_modo}    ${btn_ligado}    ${btn_ligar2}
    E salvo o nome da Rotina    Cam Bateria ON Det Mov - Sensi 50% - visão on
    Então salvo a rotina 

Rotina com Camera Bateria - Ligar Detecção de Corpo - visão on
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
    E seleciono a sensibilidade média e Ligar apenas D-Corpo    ${btn_selecionar_modo}    ${btn_ligado}    ${btn_ligar1}
    E salvo o nome da Rotina    Cam Bateria ON Det Cor - visão on
    Então salvo a rotina



























# Rotina com Camera Bateria - Desligar Detecção Corpo e Movimento Sensibilidade 50%
#     Dado que crio uma Rotina
#     E clico no botão Executar um dispositivo
#     Quando seleciono o dispositivo de Segurança e Vídeo    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bateria}
#     E seleciono a sensibilidade média e Desligar    ${btn_selecionar_modo}    ${btn_auto}    ${btn_desligar1}    ${btn_desligar2}
#     E salvo o nome da Rotina    Camera Bateria Desligar Sensibilidade 50%
#     Então salvo a rotina    