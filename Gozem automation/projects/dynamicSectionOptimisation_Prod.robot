*** Settings ***
Library           C:/Users/LionelMambingo/AppData/Local/Programs/Python/Python310/Lib/site-packages/AppiumLibrary
Library    AppiumLibrary


*** Variables ***

${number}          699948689
${password}       Momalias123
${device-id}      R58R12S2QWV    #19081FDEE001T6
${platformName}    Android

*** Test Cases ***

open food service
    Open Application    http://localhost:4723/wd/hub    platformName=${platformName}    deviceName=${device-id}    appPackage=com.gozem    appActivity=com.elluminati.eber.SplashScreenActivity    #automationName=uiautomator2   #com.gozem.merchant.view.ui.activity.SplashScreenActivity
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, "Allow")]    timeout=20
    #Click Button    Allow
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, "AUTORISER")]    timeout=20
    Click Button    AUTORISER
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'While using the app')]    timeout=10
    Click Button    While using the app
    Sleep    6
    Input Text    //android.widget.EditText[contains(@resource-id, 'com.gozem:id/etContactNumber')]    ${number}
    Click Element    //android.widget.TextView[contains(@resource-id, 'com.gozem:id/btnSignIn')]
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.gozem:id/etPassword')]    timeout=6
    Input Text    //android.widget.EditText[contains(@resource-id,'com.gozem:id/etPassword')]    ${password}
    Click Element    //android.widget.Button[contains(@resource-id,'com.gozem:id/btnConfirm')]
    Sleep    9
    Click Element    //android.widget.TextView[contains(@text, "Restaurants")]
    Wait Until Element Is Visible    //android.widget.TextView[contains(@resource-id,'com.gozem:id/tvTitle')]    timeout=6





