*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
MyFirstTestCaseLog
    Log  Hola Mundo
    

FirstSeleniumTestGoogle
#   Create Webdriver    Chrome   executable_path=/usr/bin/chromedriver
    Open Browser    https://google.com  chrome
    Set Browser Implicit Wait    5
    Input Text    name=q    DevSecOps    
    Sleep    5s   
    Click Button    name=btnK    #OR
#   Press Keys    name=btnK 
    Close Browser
    Log    Test Completed    
    

SampleLoginTest
    [Documentation]  This is a simple login test
    Open Browser    https://opensource-demo.orangehrmlive.com  browser=chrome 
    Set Browser Implicit Wait    5
    Input Text        id=txtUsername    Admin
    Input Password    id=txtPassword    admin123        
    Click Button      id=btnLogin
    Click Element     id=welcome
    Sleep    2s    
    Click Element     link=Logout
    Close Browser
    Log               Test Completed    
            









