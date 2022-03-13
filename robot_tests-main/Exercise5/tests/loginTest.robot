*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/loginPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Test Cases ***
Test1
    Input text  ${username}  tomsmith
    Input text  ${password}  incorrectPassword
    Sleep  3s
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  Your password is invalid!
    Close browser
Test2
    Open My Website
    Input text  ${username}  tom
    Input text  ${password}  incorrectPassword
    Sleep  3s
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  Your username is invalid!
    Close browser
Test3
    Open My Website
    Input text  ${username}  tomsmith
    Input text  ${password}  SuperSecretPassword!
    Sleep  3s
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  You logged into a secure area!
    Close browser
Test4
    Open My Website
    Input text  ${username}  tomsmith
    Input text  ${password}  SuperSecretPassword!
    Sleep  3s
    Click login
    Sleep  3s
    Click logout
    ${text}=  Get Text  ${error}
    Should contain  ${text}  You logged out of the secure area!
    Close browser