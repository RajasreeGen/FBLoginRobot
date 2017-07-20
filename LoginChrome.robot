*** Settings ***
Library           Selenium2Library

*** Variables ***
${URL}            http://www.facebook.com
${BROWSER}        opera
${EMAIL}          r@gmail.com
${PASS}           *****

*** Test Cases ***
[TC-001]-Login to facebook using Chrome
    Launch browser
    Log In FB

*** Keywords ***
Launch browser
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains    Log In

Log In FB
    Page Should Contain Element    id=email
    Page Should Contain Element    id=pass
    Input Text    id=email    ${EMAIL}
    Input Text    id=pass    ${PASS}
    Click Element    id=u_0_r
