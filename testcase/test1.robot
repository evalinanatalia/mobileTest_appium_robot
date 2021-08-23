*** Settings ***
Library		AppiumLibrary
Resource	../resources/resources1.robot

*** Variables ***
${Appium_Server}	http://localhost:4723/wd/hub
${Platform_Name}	Android
${Device_Name}		Android Emulator
${app}				${CURDIR}\\Sample Android App Login Test_v4.0_apkpure.com.apk


*** Test Cases ***
Start testing
	Launch Mobile Apps
	Register
	Go Back
	Login
	Close Application
	


*** Keywords ***
Launch Mobile Apps
	Open Application 	${Appium_Server}
	...		platformName=${Platform_Name}
	...		deviceName=${deviceName}
	...		app=${app}
	
Register
    Click Element    ${Form.Login.CreateOne.Link}
    Sleep    2s
    Wait Until Element Is Visible    ${Form.Register.Name.Txt}    
    Input Text    ${Form.Register.Name.Txt}    Cloud Strife
    Input Text    ${Form.Register.EmailAddress.Txt}    cloud@gmail.com
    Input Text    ${Form.Register.Password.Txt}    password@1234XX
    Input Text    ${Form.Register.PasswordConfirmation.Txt}    password@1234XX
    Click Element    ${Form.Register.Register.Btn}    
        
Login
    Input Text    ${Form.Login.EmailAddress.Txt}    cloud@gmail.com   
    Input Text    ${Form.Login.Password.Txt}    password@1234XX
    Click Element    ${Form.Login.Login.Btn}


