*** Settings ***
Library    SeleniumLibrary   

Suite Setup          Log    I am in a Suite Setup    
Suite Teardown       Log    I am in a Suite Teardown
#Test Setup           Log    I am in a Test Setup
Test Teardown        Log    I am in a Test Teardown     
Test Setup           OpenChromeHeadless

Default Tags    TagDefault

*** Test Cases ***
MyFirstTestCaseLog
    Log            Hola Mundo 1
    Set Tags       TagForFirstTestCase
    Remove Tags    TagForFirstTestCase
    
MySecondTestLog
    Log  Hola Mundo 2

MyThirdTestLog
    Log  Hola Mundo 3
    

FirstSeleniumTestGoogle
#    Create Webdriver    Chrome   executable_path=/usr/bin/chromedriver
    Open Browser                 https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q         DevSecOps    
    Sleep    5s   
    Click Button                 name=btnK    #OR
#   Press Keys    name=btnK 
    Close Browser
    Log                          Test Completed    
    

SampleLoginTest
    [Documentation]  This is a simple login test
    Open Browser    ${URL}  browser=chrome 
    Set Browser Implicit Wait    6
    LoginKW
    Sleep  3
    Click Element     id=welcome
    Click Element     link=Logout
    Close Browser
    Log               Test Completed    
    Log               This test was executed for $USER in the operating System $GDMSESSION
    

Go To Google
    Go To                https://google.com
    Log                  Estoy en Google Chrome modo Headless
    Set Browser Implicit Wait    5
    Input Text        name=q         DevSecOps
    Log               Test Completed
    
            

*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com
@{CREDENTIALS}  Admin  admin123
&{LOGINDATA}  user=Admin  password=admin123
${urlprueba}  https://pibox.nutresa.com


*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]        
    Click Button      id=btnLogin
    
OpenChromeHeadless
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    #Create Webdriver    Chrome    chrome_options=${chrome_options}  executable_path=/usr/bin/chromedriver
    Create Webdriver    Chrome    chrome_options=${chrome_options}  executable_path=./drivers/chromedriver
    #Set Window Size  1024  768
    #Go To    ${url}
    #Log  Estoy en Google Chrome sin cabecera
    #Set Browser Implicit Wait    5
    #Input Text    name=q         DevSecOps
    #Log               Test Completed





