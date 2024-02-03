*** Settings ***

Documentation     Execução das rotinas como condição - Fita Multitemperatura
Resource          ../../../../../resources/base.robot


Test Setup        Abrindo aplicativo A13
Test Teardown     Fechar Aplicativo

*** Test Cases ***

Ligar Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${btn_ligar}    ${btn_modo_branco}    ${btn_modo_branco}            
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Ligou

Modo Efeitos Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null     ${btn_modo_efeitos}    ${btn_modo_efeitos}    ${btn_modo_efeitos}     
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Modo Efeitos

Brilho Maior 50% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Maior50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Brilho Maior 50%

Brilho Menor 50% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Menor50    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Brilho Menor 50%

Brilho Igual 100% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Igual100    ${btn_modo_branco}    ${btn_modo_branco}    ${btn_modo_branco}         
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Brilho Igual 100%

Temperatura Maior 49% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${slider_temp75}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Temperatura Maior 49%

Temperatura Menor 49% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null   ${slider_temp25}    ${btn_modo_branco}    ${btn_modo_branco}       
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Temperatura Menor 49%

Temperatura Igual 100% Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${slider_temp100}    ${btn_modo_branco}    ${btn_modo_branco}
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Temperatura Igual 100%

Não Pertube Ativar Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita Multitemperatura Não Pertube Ativado

Não Pertube Desativar Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${btn_configuracoes}    ${estado_inicial}    ${btn_naopertube}
    E volto para tela do dispositivo
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}
    Então recebo notificação push    Fita Multitemperatura Não Pertube Desativado

Desligar Fita Multitemperatura
    Dado que clico no botão    ${device_fita_multi}
    Quando executo ações no dispositivo    Null    ${btn_desligar}    ${btn_modo_branco}     ${btn_modo_branco}  
    E recebo Notificação de execução    ${btn_voltar}     ${btn_perfil}    ${btn_notificações}    
    Então recebo notificação push    Fita Multitemperatura Desligou