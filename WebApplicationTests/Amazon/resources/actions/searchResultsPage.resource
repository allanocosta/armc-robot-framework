*** Settings ***
Documentation       Arquivo com as funcionalidades da página de resultado de pesquisa


*** Variables ***
${SPAN_TITLE}       div.s-no-outline > span
${DIV_RESULT}       div.sg-col-inner


*** Keywords ***
Text Should Be Displayed In The Results Page
  [Arguments]             ${TEXT}
  Wait For Elements State                         ${SPAN_TITLE} >> "${TEXT}"                      visible                 30

Text Should Be Displayed In The Search Result
  [Arguments]             ${TEXT}
  Get Element Count       ${DIV_RESULT} >> img[alt='${TEXT}']             \>=                     1
  # Scroll To Element  ${elem}

Go To Product Page
  [Arguments]             ${TEXT}
  Click                   ${DIV_RESULT} >> img[alt='${TEXT}']
