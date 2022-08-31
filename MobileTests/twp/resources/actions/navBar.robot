*** Variables ***
${BTN_NAV_BAR}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_BAR}    io.qaninja.android.twp:id/navView
${TOOL_BAR_TITLE}    io.qaninja.android.twp:id/toolbarTitle

*** Keywords ***
Abrir o menu de navegação
				Wait Until Element Is Visible    ${BTN_NAV_BAR}
				Click Element    ${BTN_NAV_BAR}
				Wait Until Element Is Visible    ${NAV_BAR}

Clicar na opção do menu
    [Arguments]    ${menu}
				Click Text    ${menu}
				Wait Until Element Is Visible    ${TOOL_BAR_TITLE}

Validar o texto da barra de ferramentas
    [Arguments]    ${TEXT}
    Element Text Should Be    ${TOOL_BAR_TITLE}    ${TEXT}
