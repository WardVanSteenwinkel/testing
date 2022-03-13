*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${error}=  css:div[id='body'] li:nth-child(1)

*** Test Cases ***
Login Without Email Address
    Input text  ${password_field}  test
    Sleep  5s
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  Username is required

Login With Unexisting Account
    Input text  ${username}  blablablatest
    Input text  ${password_field}  test
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  Invalid username

Login Without Password
    Input text  ${username}  blablablatest
    Click login
    ${text}=  Get Text  ${error}
    Should contain  ${text}  Password is required

