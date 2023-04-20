*** Settings ***
Library           C:/Users/LionelMambingo/AppData/Local/Programs/Python/Python310/Lib/site-packages/AppiumLibrary

*** Variables ***
${email}          lionel.moutome@gozem.co
${password}       AZFqxSRs
${device-id}      19081FDEE001T6
${platformName}    Android

*** Test Cases ***
Scan a digital product
    Log    my test
    Open Application    http://localhost:4723/wd/hub    platformName=${platformName}    deviceName=${device-id}    appPackage=com.gozem.merchant.test    appActivity=com.gozem.merchant.view.ui.activity.SplashScreenActivity
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, "Allow")]    timeout=20
    Click Button    Allow
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id, 'com.gozem.merchant.test:id/etEmail')]    timeout=20
    Input Text    //android.widget.EditText[contains(@resource-id, 'com.gozem.merchant.test:id/etEmail')]    ${email}
    Click Element    //android.widget.Button[contains(@resource-id,'com.gozem.merchant.test:id/btnSignIn')]
    Wait Until Element Is Visible    //android.widget.EditText[contains(@resource-id,'com.gozem.merchant.test:id/etPassword')]    timeout=6
    Input Text    //android.widget.EditText[contains(@resource-id,'com.gozem.merchant.test:id/etPassword')]    ${password}
    Click Element    //android.widget.Button[contains(@resource-id,'com.gozem.merchant.test:id/btnConfirm')]
    #Wait Until Element Is Visible    //android.widget.TextView[contains(@text, "AUTORISER")]    timeout=10
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, "AUTORISER")]    timeout=10
    Click Button    AUTORISER
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'While using the app')]    timeout=10
    Click Button    While using the app
    Wait Until Element Is Visible    //android.widget.FrameLayout[contains(@index, '6')]    timeout=10
    Click Element    //android.widget.FrameLayout[contains(@index, '6')]
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'Fermer')]    timeout=10
    Click Button    Fermer
    #Wait Until Element Is Visible    //android.widget.FrameLayout[contains(@index, "6")]    timeout=6
    Click Element    //android.widget.ImageView[contains(@resource-id, 'com.gozem.merchant.test:id/ivScan')]
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'While using the app')]    timeout=10
    Click Button    While using the app
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'Allow')]    timeout=10
    Click Button    Allow
    Wait Until Element Is Visible    //android.widget.Button[contains(@text, 'Ok')]    timeout=10
    Click Button    Ok
    Wait Until Element Is Visible    //android.widget.TextView[contains(@text, "Scanner le code")]    timeout=8
