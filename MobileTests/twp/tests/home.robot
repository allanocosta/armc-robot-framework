*** Settings ***
Documentation       Suite de testes da home page

Resource            ${CURDIR}\\..\\resources\\base.resource

Suite Teardown      Finish Session
Test Setup          Start Session


*** Test Cases ***
Deve Abrir A Tela Inicial
    [Documentation]    Abrir o App e validar o texto da descrição na tela inicial
    [Tags]    mobiletest    home
    Validar Texto Da Descrição Do App    Training Wheels Protocol
    Validar Texto Da Descrição Do App    Mobile Version
