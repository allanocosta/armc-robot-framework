*** Settings ***
Documentation   Arquivo com as funcionalidades da página de resultado de pesquisa

*** Variables ***
${SPAN_TITLE}    \div[data-cel-widget='search_result_0'] span span
# ${SPAN_RESULT}    h2 > a > span
${SPAN_RESULT}    div.s-search-results > div > div > div > div > div > div > div > h2 > a > span

*** Keywords ***
Text Should Be Displayed In The Results Page
    [Arguments]     ${Text}
    # Checkpoint results page
    Wait For Elements State    ${SPAN_TITLE} >> "${Text}"    visible    30

Text Should Be Displayed In The Search Result
    [Arguments]     ${Text}
    Get Element Count    ${SPAN_RESULT} >> "${Text}"    \>=    1
    Scroll To Element    ${SPAN_RESULT} >> "${Text}"

Go To Product Page
    [Arguments]     ${Product}
    Click    ${SPAN_RESULT} >> "${Product}"