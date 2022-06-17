*** Settings ***
Documentation   Arquivo com as funcionalidades da página de menu

*** Variables ***
${H1_TITLE}    .acsUxWidget h1
${SPAN_CATEGORY_ITEM}    \#nav-subnav .nav-a-content

*** Keywords ***
Text Should Be Displayed In The Menu Page
    [Arguments]     ${Text}
    Get Text    ${H1_TITLE}    ==    ${Text}

Category Should Be Displayed In The Header
    [Arguments]     ${CategoryText}
    Get Element Count    ${SPAN_CATEGORY_ITEM} >> "${CategoryText}"    ==    1
    Scroll To Element    ${SPAN_CATEGORY_ITEM} >> "${CategoryText}"