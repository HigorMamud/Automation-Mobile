*** Settings ***

Documentation    Smart Câmera Botª 1ª Geração
Resource            ../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo


*** Test Cases ***
# Ligar
Rotina com Camera Bot v1 - Todas ações ligadas - Sensibilidades Altas - Gravação Contínua
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_ligar1}    ${btn_ligar2}    ${btn_ligar3}    ${btn_ligar4}    ${btn_ligar5}    ${btn_brilho51}    ${btn_salvar}    ${btn_brilho51}    ${btn_salvar}    ${grav_cont}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    
    E salvo o nome da Rotina    Câmera Bot v1 Todas Altas Grav Contínua - Cima
    Então salvo a rotina

Rotina com Camera Bot v1 - Todas ações ligadas - Sensibilidades Baixas - Gravação Contínua
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_ligar1}    ${btn_ligar2}    ${btn_ligar3}    ${btn_ligar4}    ${btn_ligar5}    ${ignora_sensor}    ${btn_salvar}    ${ignora_sensi}    ${btn_salvar}    ${grav_cont}    ${btn_salvar}    ${btn_cima}    ${btn_direita}       
    E salvo o nome da Rotina    Câmera Bot v1 Todas Baixas Grav Contínua - Direita
    Então salvo a rotina

Rotina com Camera Bot v1 - Apenas Movimento, Ruído e Gravação - Sensibilidades Baixas - Gravação Contínua
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${ignora_erro}    ${ignora_erro}    ${btn_ligar3}    ${btn_ligar4}    ${btn_ligar5}    ${btn_brilho51}    ${btn_salvar}    ${btn_brilho51}    ${btn_salvar}    ${grav_cont}    ${btn_salvar}    ${btn_cima}    ${btn_baixo}
    E salvo o nome da Rotina    Câmera Bot v1 Mov Ruí Grav Baixas Grav Contínua - Baixo
    Então salvo a rotina

Rotina com Camera Bot v1 - Apenas LED e Movimento - Sensibilidades Baixas - Gravação Contínua
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_ligar1}    ${btn_ligar2}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}
    E salvo o nome da Rotina    Câmera Bot v1 Todas Apenas LED e Movimento - Esquerda
    Então salvo a rotina        

Rotina com Camera Bot v1 - Todas ações ligadas - Sensibilidades Altas - Detecçao de movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_ligar1}    ${btn_ligar2}    ${btn_ligar3}    ${btn_ligar4}    ${btn_ligar5}    ${btn_brilho51}    ${btn_salvar}    ${btn_brilho51}    ${btn_salvar}    ${detec_mov}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    
    E salvo o nome da Rotina    Câmera Bot v1 Todas Altas Detec Movimento
    Então salvo a rotina   

Rotina com Camera Bot v1 - Todas ações ligadas - Sensibilidades Baixas - Detecçao de movimento
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_ligar1}    ${btn_ligar2}    ${btn_ligar3}    ${btn_ligar4}    ${btn_ligar5}    ${ignora_sensor}    ${btn_salvar}    ${ignora_sensi}    ${btn_salvar}    ${detec_mov}    ${btn_salvar}    ${ignora_erro}    ${ignora_erro}    
    E salvo o nome da Rotina    Câmera Bot v1 Todas Baixas Detec Movimento
    Então salvo a rotina     

#Desligar
Rotina com Camera Bot v1 - Todas ações desligadas
    Dado que crio uma Rotina
    E clico no botão Executar um dispositivo
    Quando seleciono a categoria    ${btn_selecionar_dispositivo}    ${btn_seguranca_video}    ${device_cam_bot_v1}
    E defino as ações para ligar/desligar as funcionalidades da câmera bot v1    ${btn_desligar1}    ${btn_desligar2}    ${btn_desligar3}    ${btn_desligar4}    ${btn_desligar5}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    ${ignora_erro}    
    E salvo o nome da Rotina    Câmera Bot v1 Desligar
    Então salvo a rotina