*** Settings ***
Resource  ../pageObjects/basePage.robot

*** Variables ***
${add_contact}=  id:newContact
${firstname}=  id:firstname
${lastname}=  id:lastname
${phonenumber}=  id:phoneNum
${email}=  id:email
${primary_contact}=  xpath://*[@id="primaryContact"]/option[2]
${opslaan}=  id:save
${table}=  id:dashTable


*** Keywords ***
Open add contact
    Click Element  ${add_contact}

Enter firstname
    [Arguments]  ${input}
    Input Text  ${firstname}  ${input}

Enter lastname
    [Arguments]  ${input}
    Input Text  ${lastname}  ${input}

Enter phonenumber
    [Arguments]  ${input}
    Input Text  ${phonenumber}  ${input}

Enter email
    [Arguments]  ${input}
    Input Text  ${email}  ${input}

Enter primaryContact
    Click Element  ${primary_contact}

Opslaan contact
    Click Element  ${opslaan}


