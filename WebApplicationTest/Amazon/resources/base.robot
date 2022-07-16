*** Settings ***
Documentation       Arquivo base do projeto

Library             Browser
#Actions Resources
Resource            actions/header.robot
Resource            actions/menuPage.robot
Resource            actions/productPage.robot
Resource            actions/cartPage.robot
Resource            actions/searchResultsPage.robot


*** Variables ***
${Browser}          chromium
${Headless}         true
${Viewport}         {'width': 1900,'height': 1000}
${RecordVideo}      {'dir':'videos', 'size':{'width':1920, 'height':1080}}
${ColorScheme}      dark

${Url}              https://www.amazon.com.br
${TitlePage}        Amazon.com.br | Tudo pra você, de A a Z.


*** Keywords ***
Start Session
    New Browser    ${Browser}    ${Headless}    timeout=01:00
    New Context    viewport=${Viewport}    colorScheme=${ColorScheme}    recordVideo=${RecordVideo}
    New Page    ${Url}
    # Checkpoint home page
    Get Title    ==    ${TitlePage}

Fechar Navegador
    Close Browser    ALL

ScreenShot
    Take Screenshot

Page Title Should Be
    [Arguments]    ${PageTitle}
    # Checkpoint menu page
    Get Title    ==    ${PageTitle}

#Gherkin BDD

# Dado que estou na home page da Amazon.com.br
#    Start Session

# Quando adicionar o produto "Console Xbox Series S" no carrinho
#    Type The Product Name "Xbox Series S" In The Search Field
#    Click Search Button
#    The Text "RESULTADOS" Should Be Displayed On The Results Page
#    Must Have "1" Or More Element(s) With The Text "Console Xbox Series S" In The Search Result
#    Access The Product Page "Console Xbox Series S"
#    Add The Product "Console Xbox Series S" To Cart

# Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
#    Go To Cart
#    Check If Your Product "Console Xbox Series S" Is In The Cart

# E existe o produto "Console Xbox Series S" no carrinho
#    Type The Product Name "Xbox Series S" In The Search Field
#    Click Search Button
#    The Text "RESULTADOS" Should Be Displayed On The Results Page
#    Must Have "1" Or More Element(s) With The Text "Console Xbox Series S" In The Search Result
#    Access The Product Page "Console Xbox Series S"
#    Add The Product "Console Xbox Series S" To Cart
#    Go To Cart
#    Check If Your Product "Console Xbox Series S" Is In The Cart

# Quando remover o produto "Console Xbox Series S" do carrinho
#    Remove the product "Console Xbox Series S" to cart

# Então o carrinho deve ficar vazio
#    Check If The Cart Is Empty
