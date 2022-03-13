*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${login_button}=  css:[name="login"]
${password_field}=  id:password
${username}=  id:username
${email}=  id:reg_email
${reg_password}=  id:reg_password
${registration_button}=  css:[name="register"]

*** Keywords ***
Click login
    Click element  ${login_button}

Click register
    Click element  ${registration_button}

