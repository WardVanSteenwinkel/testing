*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${login_button}=  css:[name="login"]
${password_field}=  id:password
${username}=  id:username


*** Keywords ***
Click login
    Click element  ${login_button}

