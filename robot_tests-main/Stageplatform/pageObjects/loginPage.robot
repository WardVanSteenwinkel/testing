*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${email}=  id:email
${password}=  id:password
${login_button}=  xpath://input[@value='Login']
${login_contact}=  joske@jos.be
${login_password}=  contact
${dropdown}=  xpath://img[@alt='company icon']
${logout_button}=  xpath://a[normalize-space()='Logout']

*** Keywords ***
Click login
    Click element  ${login_button}

Login Contact
    Wait Until Element Is Visible  ${email}
    Wait Until Element Is Visible  ${password}
    Input Text  ${password}  ${login_password}
    Input Text  ${email}  ${login_contact}
    Click Element  ${login_button}

Click logout
    Click Element  ${dropdown}
    Click Element  ${logout_button}


