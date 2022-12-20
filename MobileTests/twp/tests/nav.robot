*** Settings ***
Documentation       Suite de testes do menu de navegação

Resource            ${CURDIR}\\..\\resources\\base.resource

Suite Teardown      Finish Session
Test Setup          Start Session

Test Tags           mobiletest  nav


*** Test Cases ***
Deve acessar a tela AVENGERS
  [Documentation]  Acessar a tela AVENGENS pelo menu de navegação e validar o texto da barra de ferramentes
  [Tags]                  avengers
  Clicar Em Começar
  Abrir O Menu De Navegação
  Clicar No Menu          AVENGERS
  Validar O Texto Da Barra De Ferramentas         AVENGERS

Deve acessar a tela FORMS
  [Documentation]  Acessar a tela FORMS pelo menu de navegação e validar o texto da barra de ferramentes
  [Tags]                  forms
  Clicar Em Começar
  Abrir O Menu De Navegação
  Clicar No Menu          FORMS
  Validar O Texto Da Barra De Ferramentas         FORMS

Deve acessar a tela DIALOGS
  [Documentation]  Acessar a tela DIALOGS pelo menu de navegação e validar o texto da barra de ferramentes
  [Tags]                  dialogs
  Clicar Em Começar
  Abrir O Menu De Navegação
  Clicar No Menu          DIALOGS
  Validar O Texto Da Barra De Ferramentas         DIALOGS

Deve acessar a tela SEEK BAR
  [Documentation]  Acessar a tela SEEK BAR pelo menu de navegação e validar o texto da barra de ferramentes
  [Tags]                  seek_bar
  Clicar Em Começar
  Abrir O Menu De Navegação
  Clicar No Menu          SEEK BAR
  Validar O Texto Da Barra De Ferramentas         SEEK BAR
