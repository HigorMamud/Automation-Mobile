*** Settings ***

Resource          ../../resources/base.robot

*** Keywords ***

Quando clico em Loja
    Wait Until Element Is Visible      ${btn_home_local}    10
    Click Element                      ${btn_loja}
    Capture Page Screenshot

Então a loja é exibida
    Wait Until Element Is Visible      accessibility_id=Loja
    Capture Page Screenshot            10
  