*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Email}    Patteera's Email
${Password}    Patteera's Password
${LoginButton}    //*[@id="u_0_b"]
${CreatePostTextbox}    //*[@id="mount_0_0"]/div/div[1]/div[1]/div[3]/div/div/div[1]/div[1]/div/div[2]/div/div/div[3]/div/div[2]/div/div/div/div[1]/div
${PostInputTextbox}    //*[@id="mount_0_0"]/div/div[1]/div[1]/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[1]/div/div/div[2]/div[1]/div[1]/div[1]/div/div/div/div/div[2]/div/div/div/div
${PostTextMessage}    สวัสดี Robot Framework 
${PostButton}    //*[@id="mount_0_0"]/div/div[1]/div[1]/div[4]/div/div/div[1]/div/div[2]/div/div/div/form/div/div[1]/div/div/div[3]/div[2]/div  

*** Test Cases ***
Post Hello in Facebook
    Open facebook page on chrome
    Login
    Create post
 
*** Keywords ***
Open facebook page on chrome
    Open Browser    https://www.facebook.com    chrome
Login 
    Input Text    email    ${PhoneNumber}
    Input Text    pass    ${Password}
    Click Element    xpath:${LoginButton}
Create post
    Wait Until Page Contains Element    xpath:${CreatePostTextbox}
    Click Element    xpath:${CreatePostTextbox}
    Wait Until Page Contains Element    xpath:${PostInputTextbox}
    Press Keys    xpath:${PostInputTextbox}    ${PostTextMessage} 
    Click Element    xpath:${PostButton}   
