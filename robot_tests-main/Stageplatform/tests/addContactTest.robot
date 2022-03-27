*** Settings ***
Documentation    Suite description
Resource  ../pageObjects/loginPage.robot
Resource  ../pageObjects/companyPage.robot
Resource  ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${firstname_value}=  peter
${lastname_value}=  h
${email_value}=  peter.h@canvah.be
${phonenumber_value}=  0989779887
${primary_contact_value}=  xpath://*[@id="primaryContact"]/option[2]
${result}=  xpath://*[@id="dashTable"]/tbody/tr[8]
${error_firstname}=  xpath://*[@id="companyForm"]/div[1]/small
${error_lastname}=  xpath://*[@id="companyForm"]/div[2]/small


*** Test Cases ***
Add contact (happy flow)
    Login Contact
    Open add contact
    Enter firstname  ${firstname_value}
    Enter lastname  ${lastname_value}
    Enter phonenumber  ${phonenumber_value}
    Enter email  ${email_value}
    Enter primaryContact
    Opslaan contact
    Sleep  3s
    Table Should Contain  ${table}  ${firstname_value}  ${lastname_value}
    Click logout




Add contact (without firstname)
     Login Contact
     Open add contact
     Enter lastname  ${lastname_value}
     Enter phonenumber  ${phonenumber_value}
     Enter email  ${email_value}
     Enter primaryContact
     Sleep  3s
     Opslaan contact
     Sleep  3s
     Wait Until Element Is Visible  ${error_firstname}
     ${text}=  Get Text  ${error_firstname}
     Should Contain  ${text}  firstname kan niet leeg zijn
     Close browser

Add contact (without lastname)
     Open My Website
     Login Contact
     Open add contact
     Enter firstname  ${firstname_value}
     Enter phonenumber  ${phonenumber_value}
     Enter email  ${email_value}
     Enter primaryContact
     Opslaan contact
     Wait Until Element Is Visible  ${error_lastname}
     ${text}=  Get Text  ${error_lastname}
     Should Contain  ${text}  lastname kan niet leeg zijn
     Close browser