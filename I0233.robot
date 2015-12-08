*** Settings ***

Documentation  Ali Nadhum RT4

Test Setup   Open Browser To Jamk
Test Teardown  Close test browser
Resource resources.robot

*** Variables ***

${Findable_word}  Work-Life Balance in Finnish game industry

${BROWSER}  firefox
${REMOTE_URL}
${DESIRED_CAPABILITIES}

${LOGIN_FAIL_MSG}  Incorrect username or password.

*** Test Cases ***
Trying to navigate throw jamk website

    Go to  http://www.jamk.fi/fi/Tutkimus-ja-kehitys/

    Page should contain element  id=Content_Content_ctl00_ContentArea1Property_ctl00_ctl01_ctl00_Container

    Click button  id=ctl00_ctl00_Content_Content_ctl00_ContentArea1Property_ctl00_ctl02_ctl00_Items_ctl04_ShowMore

    Click Link xpath=//a[@href='/fi/Uutiset/jamkin-opinnaytetyo-suomen-peliteollisuuden-tyontekijat-voivat-hyvin/']

    Page should contain  ${Findable_word}
    [Teardown] Close All Browsers

*** Keywords ***

Open test browser
    Open browser  about:  ${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${DESIRED_CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Sauce status
    ...  ${SUITE_NAME} | ${TEST_NAME}
    ...  ${TEST_STATUS}  ${TEST_TAGS}  ${REMOTE_URL}
    Close all browsers
