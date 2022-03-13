*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${email}=  id:email
${password}=  id:password
${login_button}=  xpath://input[@value='Login']

*** Keywords ***
Click login
    Click element  ${login_button}