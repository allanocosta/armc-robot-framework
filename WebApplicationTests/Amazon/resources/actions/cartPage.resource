*** Settings ***
Documentation       Arquivo com as funcionalidades do carrinho de compras

*** Variables ***
${DIV_CART_BODY}        div#sc-active-cart
${SPAN_CART_TEXT}       span.a-truncate-cut
${H1_CART_EMPTY}        div#sc-active-cart h1
${H2_CART_EMPTY}        div#sc-active-cart h2

${TEXT_CART_EMPTY}      Seu carrinho de compras da Amazon está vazio.


*** Keywords ***
Product Should Be In Cart
    [Arguments]    ${Product}
    Wait For Elements State    ${DIV_CART_BODY}    visible    30
    Wait For Elements State    ${SPAN_CART_TEXT}    visible    30
    Get Element Count    ${SPAN_CART_TEXT} >> "${Product}"    ==    1

Remove A Product From Cart
    [Arguments]    ${Product}
    Click
    ...    xpath=//span[contains(@class,'a-truncate-cut') and .='${Product}']/../../../../../../..//input[@value='Excluir']

Cart Should Be Empty
    Get Text    ${H1_CART_EMPTY}    ==    ${TEXT_CART_EMPTY}
