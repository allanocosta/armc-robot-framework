*** Settings ***
Documentation       Arquivo com as funcionalidades da página de resultado de pesquisa


*** Variables ***
${SPAN_TITLE}       \div[data-cel-widget='search_result_2'] span span
${SPAN_RESULT}      div.s-search-results > div > div > div > div > div > div > div > h2 > a


*** Keywords ***
Text Should Be Displayed In The Results Page
  [Arguments]             ${TEXT}
  Wait For Elements State                         ${SPAN_TITLE} >> "${TEXT}"                      visible                 30

Text Should Be Displayed In The Search Result
  [Arguments]             ${TEXT}
  Get Element Count       ${SPAN_RESULT} >> //span[contains(.,'${TEXT}')]                         \>=                     1
  # Scroll To Element  ${elem}

Go To Product Page
  [Arguments]             ${TEXT}
  Click                   ${SPAN_RESULT} >> //span[contains(.,'${TEXT}')]
