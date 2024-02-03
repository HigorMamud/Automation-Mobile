*** Settings ***

Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
Rotina com Camera 360 - Ligar Detecção e Gravação Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E seleciono a sensibilidade média Ligar    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Camera 360 Ligar Sensibilidade 50%
    Então salvo a rotina

Rotina com Camera Camera 360 - Desligar Detecção e Gravação Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E seleciono a sensibilidade média Desligar    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Camera 360 Desligar Sensibilidade 50%
    Então salvo a rotina

Rotina com Camera 360 - Ligar Detecção Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E seleciono a sensibilidade média Ligar apenas    ${btn_ligar1}
    E salvo o nome da Rotina    Camera 360 Ligar Detecção Sensibilidade 50%
    Então salvo a rotina

Rotina com Camera Camera 360 - Desligar Detecção Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E seleciono a sensibilidade média Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Camera 360 Desligar Detecção Sensibilidade 50%
    Então salvo a rotina

Rotina com Camera 360 - Ligar Gravação Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino a Sensibilidade 0 e a tarefa para Ligar apenas    ${btn_ligar2}
    E salvo o nome da Rotina    Camera 360 Ligar Gravação
    Então salvo a rotina

Rotina com Camera Camera 360 - Desligar Gravação Sensibilidade 50%
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
     E defino a Sensibilidade 0 e a tarefa para Desligar apenas    ${btn_desligar2}
    E salvo o nome da Rotina    Camera 360 Desligar Gravação Sensibilidade 50%
    Então salvo a rotina

######SENSIBILIDADE 0%
Rotina com Camera Camera 360 - Ligar Detecção e Gravação Sensibilidade 0
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino as duas tarefas para Ligar    ${btn_ligar2}    ${btn_ligar1}
    E salvo o nome da Rotina    Camera 360 Ligar Sensibilidade 0
    Então salvo a rotina  

Rotina com Camera Camera 360 - Desligar Detecção e Gravação Sensibilidade 0
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino as duas tarefas para Desligar    ${btn_ligar1}    ${btn_ligar2}
    E salvo o nome da Rotina    Camera 360 Desligar Sensibilidade 0
    Então salvo a rotina    

Rotina com Camera Camera 360 - Ligar Detecção Sensibilidade 0 
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino a Sensibilidade 0 e a tarefa para Ligar apenas    ${btn_ligar1}
    E salvo o nome da Rotina    Camera 360 Desligar Sensibilidade 0
    Então salvo a rotina    

Rotina com Camera Camera 360 - Desligar Detecção Sensibilidade 0
    Dado que clico na Guia    ${btn_rotinas}    ${btn_nova_rotina}
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_360}
    E defino a Sensibilidade 0 e a tarefa para Desligar apenas    ${btn_desligar1}
    E salvo o nome da Rotina    Camera 360 Desligar Sensibilidade 0
    Então salvo a rotina    