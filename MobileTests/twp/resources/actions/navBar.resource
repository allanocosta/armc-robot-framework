*** Settings ***
Documentation       Arquivo de App Actions da Navigation Page


*** Variables ***
${BTN_NAV_BAR}          //android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_BAR}              io.qaninja.android.twp:id/navView
${TOOL_BAR_TITLE}       io.qaninja.android.twp:id/toolbarTitle


*** Keywords ***
Abrir O Menu De Navegação
  Wait Until Element Is Visible                   ${BTN_NAV_BAR}
  Click Element           ${BTN_NAV_BAR}
  Wait Until Element Is Visible                   ${NAV_BAR}

Clicar No Menu
  [Arguments]             ${menu}
  Click Text              ${menu}
  Wait Until Element Is Visible                   ${TOOL_BAR_TITLE}

Validar O Texto Da Barra De Ferramentas
  [Arguments]             ${TEXT}
  Element Text Should Be  ${TOOL_BAR_TITLE}       ${TEXT}
