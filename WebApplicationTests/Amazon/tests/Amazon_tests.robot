*** Settings ***
Documentation       Suite de testes para o site Amazon.com.br

Resource            ${CURDIR}\\..\\resources\\base.resource

Suite Setup         Start Session
Suite Teardown      Close Session
Test Setup          Go To Homepage
Test Teardown       ScreenShot

Test Tags           webtest  functional  regression


*** Test Cases ***
CT 01 - Access "Eletrônicos" Menu
  [Documentation]  Validar o acesso ao menu "Eletrônicos" e verifica a categoria "Computadores e Informática"
  [Tags]                  menu                    category

  Click Menu              Eletrônicos
  Page Title Should Be    Eletrônicos e Tecnologia | Amazon.com.br
  Text Should Be Displayed In The Menu Page       Eletrônicos e Tecnologia
  Category Should Be Displayed In The Header      Computadores e Informática

CT 02 - Search a Product
  [Documentation]  Testar a busca do produto "Pilha Recarregável" através do campo de pesquisa e validar o resultado da pesquisa
  [Tags]                  search_product

  Search By               Pilha Recarregável
  Click Search Button
  Text Should Be Displayed In The Results Page    RESULTADOS
  Text Should Be Displayed In The Search Result   Pilha Recarregável AAA Palito DURACELL Com 4 Unidades

CT 03 - Add Product to Cart
  [Documentation]  Testar e verificar a adição de um produto no carrinho de compras
  [Tags]                  add_cart

  Search By               Pilha Recarregável
  Click Search Button
  Text Should Be Displayed In The Results Page    RESULTADOS
  Text Should Be Displayed In The Search Result   Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Go To Product Page      Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Add To Cart             Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Go To Cart
  Product Should Be In Cart                       Pilha Recarregável AAA Palito DURACELL Com 4 Unidades

CT 04 - Remove Product to Cart
  [Documentation]  Testar e verificar a remoção de um produto no carrinho de compras
  [Tags]                  remove_cart

  Search By               Pilha Recarregável
  Click Search Button
  Text Should Be Displayed In The Results Page    RESULTADOS
  Text Should Be Displayed In The Search Result   Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Go To Product Page      Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Add To Cart             Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Go To Cart
  Product Should Be In Cart                       Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Remove A Product From Cart                      Pilha Recarregável AAA Palito DURACELL Com 4 Unidades
  Cart Should Be Empty
