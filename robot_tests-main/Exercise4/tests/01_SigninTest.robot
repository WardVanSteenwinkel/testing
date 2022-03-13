*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/signInPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Test Cases ***
Login Without Email Address
    Input text  ${password_field}  test
    Sleep  5s
    Click login
    Should contain  ${error}  Error: Username is required.

