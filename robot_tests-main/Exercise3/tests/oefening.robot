*** Settings ***
Resource            ../pageObjects/basePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test About Us Page Contains Expected Text
    Go To Home
    ${text}=  Get Smartphones text




    Should Contain  ${text}  Zo helpen we je om te kiezen en het maximale uit je aankoop te halen.
