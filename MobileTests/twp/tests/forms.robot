*** Settings ***
Documentation       Suite de testes da feature forms

Resource            ${CURDIR}\\..\\resources\\base.resource

Suite Teardown      Finish Session
Test Setup          Start Session

Test Tags           mobiletest  forms


*** Test Cases ***
Deve logar com sucesso
  [Documentation]  Validar o login no app com sucesso
  [Tags]                  login
  Clicar Em Começar
  Abrir O Menu De Navegação
  Clicar No Menu          FORMS
  Clicar Na Opção         LOGIN
  Deve Validar Texto Da Página De Login           Fala QA, vamos testar o login?
  Deve Submeter O Formulário                      eu@papito.io            qaninja
  Deve Validar Texto Da Página De Login           Show! Suas credenciais são validas.
