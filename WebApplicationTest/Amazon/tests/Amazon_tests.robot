*** Settings ***
Documentation       Suite de testes para o site Amazon.com.br

Resource            ${CURDIR}${/}..\\resources\\base.robot

Suite Setup         Start Session
Test Setup          Go To Homepage
Test Teardown       ScreenShot
Suite Teardown      Close Session


*** Test Cases ***
CT 01 - Access "Eletrônicos" Menu
    [Documentation]    Validar o acesso ao menu "Eletrônicos" e verifica a categoria "Computadores e Informática"
    [Tags]    functional    regression    menu    category

    Click Menu    Eletrônicos
    Page Title Should Be    Eletrônicos e Tecnologia | Amazon.com.br
    Text Should Be Displayed In The Menu Page    Eletrônicos e Tecnologia
    Category Should Be Displayed In The Header    Computadores e Informática

CT 02 - Search a Product
    [Documentation]    Testar a busca do produto "Xbox Series S" através do campo de pesquisa
    ...    e validar o resultado da pesquisa
    [Tags]    functional    regression    search_product

    Search By    Xbox Series S
    Click Search Button
    Text Should Be Displayed In The Results Page    RESULTADOS
    Text Should Be Displayed In The Search Result    Console Xbox Series S

CT 03 - Add Product to Cart
    [Documentation]    Testar e verificar a adição de um produto no carrinho de compras
    [Tags]    functional    regression    add_cart

    Search By    Xbox Series S
    Click Search Button
    Text Should Be Displayed In The Results Page    RESULTADOS
    Text Should Be Displayed In The Search Result    Console Xbox Series S
    Go To Product Page    Console Xbox Series S
    Add To Cart    Console Xbox Series S
    Go To Cart
    Product Should Be In Cart    Console Xbox Series S

CT 04 - Remove Product to Cart
    [Documentation]    Testar e verificar a remoção de um produto no carrinho de compras
    [Tags]    functional    regression    remove_cart

    Search By    Xbox Series S
    Click Search Button
    Text Should Be Displayed In The Results Page    RESULTADOS
    Text Should Be Displayed In The Search Result    Console Xbox Series S
    Go To Product Page    Console Xbox Series S
    Add To Cart    Console Xbox Series S
    Go To Cart
    Product Should Be In Cart    Console Xbox Series S
    Remove A Product From Cart    Console Xbox Series S
    Cart Should Be Empty
