*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/loginPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${login_url}=  https://stageplatform.herokuapp.com/company/1
${password_lost}=  xpath://a[normalize-space()='Paswoord vergeten?']
${email_lost_input}=  xpath://input[@placeholder='Email']
${reset_link}=  xpath://input[@value='Reset link versturen']
${error}=  xpath://html/body/main/form/div[1]/p

*** Test Cases ***
Login with valid data
    Input Text  ${email}  joske@jos.be
    Input Text  ${password}  contact
    Sleep  3s
    Click login
    Location Should Be  ${login_url}
    Close browser

Logout
    Open My Website
    Login Contact
    Sleep  3s
    Click logout
    Close browser

Forgot password
    Open My Website
    Click Element  ${password_lost}
    Wait Until Element Is Visible  ${email_lost_input}
    Input Text  ${email_lost_input}  joske@jos.be
    Click Element  ${reset_link}
    ${text}=  Get Text  ${error}
    Should Contain  ${text}  Er werd een reset password mail verstuurd.
    Close browser

Forgot password (wrong email)
    Open My Website
    Click Element  ${password_lost}
    Wait Until Element Is Visible  ${email_lost_input}
    Input Text  ${email_lost_input}  fergvrt@vfdvfd
    Click Element  ${reset_link}
    ${text}=  Get Text  ${error}
    Should Contain  ${text}  De gebruiker werd niet gevonden.
    Close browser



