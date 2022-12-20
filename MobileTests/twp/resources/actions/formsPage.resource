*** Settings ***
Documentation       Arquivo de App Actions do Forms Page


*** Variables ***
${INPUT_EMAIL}          io.qaninja.android.twp:id/etEmail
${INPUT_PASSWORD}       io.qaninja.android.twp:id/etPassword
${BTN_ENTRAR}           io.qaninja.android.twp:id/btnSubmit


*** Keywords ***
Clicar Na Opção
  [Arguments]             ${TEXT}
  Click Text              ${TEXT}

Deve Validar Texto Da Página De Login
  [Arguments]             ${TEXT}
  Wait Until Page Contains                        ${TEXT}

Deve Submeter O Formulário
  [Arguments]             ${LOGIN}                ${SENHA}
  Input Text              ${INPUT_EMAIL}          ${LOGIN}
  Input Text              ${INPUT_PASSWORD}       ${SENHA}
  Click Element           ${BTN_ENTRAR}
