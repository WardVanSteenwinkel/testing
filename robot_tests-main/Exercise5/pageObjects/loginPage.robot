*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${username}=  id:username
${password}=  id:password
${login_button}=  xpath://button[@type='submit']
${logout_button}=  xpath://i[@class='icon-2x icon-signout']
${error}=  id:flash

*** Keywords ***
Click login
    Click element  ${login_button}

Click logout
    Click element  ${logout_button}
