*** Settings ***
Resource    ${CURDIR}\\..\\resources\\base.robot

Test Setup    Start Session
Suite Teardown    Finish Session

*** Test Cases ***
Deve abrir a tela inicial
    [Tags]    mobiletest    home
    Validar texto da descrição do app    Training Wheels Protocol
    Validar texto da descrição do app    Mobile Version
