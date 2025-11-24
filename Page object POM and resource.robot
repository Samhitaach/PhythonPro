# Online Python compiler (interpreter) to run Python online.
# Write Python 3 code in this online editor and run it.
***setting***
Documentation
Library SeleniumLibrary
Library OperatingSystem
Library Collections
Library String
Browser Library
Library DateTime
Library XML
Library Appium
Library Android
Library  DataDriver     ../test_data/LoginData.xlsx    sheet_name=Sheet1
Library  RequestsLibrary
resource   resource.robot
Suite Setup         Open my Browser ${URL}  ${Browser}
Suite Teardown      Close Browsers
Test Setup          Open Login Page
Test Template  Login with invalid credentials
***variables***
#Constants
 Login    name=robot    password=secret
#Scalar variables
${user_name} SA
${PASSWORD} 7868
${URL} https://docs.robotframework.org/docs/variables
${Browser} Chrome

#List variables
@{Theme}  BANK  WHITE  VIO  COOL
#Dictionary variable
&{PAI} admin  RA

***Keywords***
Login with invalid credentials
Open the browser with url
Create Webdriver 
[Arguments]  ${username}  ${PASSWORD}
Log Many     ${username}  ${PASSWORD}

***Test cases***   username    password
invalid username    iv          ${PASSWORD}
invalid password    ${user_name}  gt
valid credentials ${user_name} ${PASSWORD}
