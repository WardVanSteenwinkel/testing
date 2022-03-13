*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${login_button}=  css:[input[value='Login']]
${password_field}=  id:password
${error}=  css:[div[id='body'] li:nth-child(1)]

*** Keywords ***
Click login
    Click element  ${login_button}

