*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/loginPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${login_url}=  https://stageplatform.herokuapp.com/account

*** Test Cases ***
Login with valid data
    Input Text  ${email}  foujo@thomasmore.be
    Input Text  ${password}  coordinator
    Sleep  3s
    Click login
    Location Should Be  ${login_url}
