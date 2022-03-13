*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***


*** Test Cases ***
Register without email
    Input text  ${reg_password}  test
    Sleep  3s
    Click register
    Element should be disabled  ${registration_button}

Register without password
    Input text  ${email}  r085556@thomasmore.be
    Sleep  3s
    Click register
    Element should be disabled  ${registration_button}

