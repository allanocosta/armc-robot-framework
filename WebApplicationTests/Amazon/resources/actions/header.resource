*** Settings ***
Documentation       Arquivo com as funcionalidades do header da página


*** Variables ***
${SEARCH_BAR}       \#twotabsearchtextbox
${SEARCH_BUTTON}    \#nav-search-submit-button
${CART_BUTTON}      a#nav-cart
${DIV_MENU}         \#nav-xshop


*** Keywords ***
Click Menu
  [Arguments]             ${Menu}
  Click                   ${DIV_MENU} >> "${Menu}"

Search By
  [Arguments]             ${ProductName}
  Fill Text               ${SEARCH_BAR}           ${ProductName}

Click Search Button
  Click                   ${SEARCH_BUTTON}

Go To Cart
  Wait For Elements State                         ${CART_BUTTON}          visible                 30
  Click                   ${CART_BUTTON}
