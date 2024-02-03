*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
Dado que clico na Fita LED Multi
    Wait Until Element Is Visible    ${btn_home_local}    10
    Swipe    536    2078    595    94
    Click Element    ${device_fita_multi}
    



