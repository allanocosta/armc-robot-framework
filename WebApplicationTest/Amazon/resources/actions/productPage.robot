*** Settings ***
Documentation   Arquivo com as funcionalidades da página do produto

*** Variables ***
${SPAN_PRODUCT_TITLE}    span#productTitle
${BTN_ADD_TO_CART}    input#add-to-cart-button

*** Keywords ***
Add To Cart
    [Arguments]     ${Product}
    Get Text    ${SPAN_PRODUCT_TITLE}    ==    ${Product}
    Click    ${BTN_ADD_TO_CART}