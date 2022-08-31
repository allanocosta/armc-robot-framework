*** Settings ***
Resource    ${CURDIR}\\..\\resources\\base.robot

Test Setup    Start Session
Suite Teardown    Finish Session

*** Test Cases ***
Deve acessar a tela AVENGERS
    [Tags]    nav    avengers
    Clicar em começar
    Abrir o menu de navegação
    Clicar na opção do menu    AVENGERS

				Validar o texto da barra de ferramentas    AVENGERS

Deve acessar a tela FORMS
    [Tags]    nav    forms
    Clicar em começar
    Abrir o menu de navegação
    Clicar na opção do menu    FORMS

				Validar o texto da barra de ferramentas    FORMS

Deve acessar a tela DIALOGS
    [Tags]    nav    dialogs
    Clicar em começar
    Abrir o menu de navegação
    Clicar na opção do menu    DIALOGS

				Validar o texto da barra de ferramentas    DIALOGS

Deve acessar a tela SEEK BAR
    [Tags]    nav    seek_bar
    Clicar em começar
    Abrir o menu de navegação
    Clicar na opção do menu    SEEK BAR

				Validar o texto da barra de ferramentas    SEEK BAR
