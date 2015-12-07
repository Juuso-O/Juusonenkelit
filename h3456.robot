*** Settings ***
Documentation 	Pasin ikioma ropotti
Resource	resources.robot

*** Test Cases ***
Go To Library
	Open Browser To JAMK
	Click Kirjasto
	Insert Text
	[Teardown]  Close All Browsers	

*** Keywords ***
Click Kirjasto
	Click Element  xpath=//*[@id="form1"]/footer/section[2]/div/div/div[3]/ul/li[7]/a
	Title Should Be  Etusivu - JAMK

Insert Text
	Input Text  //*[@id="Content_Content_Content_ctl00_ContentArea1Property_ctl00_ctl01_ctl00_SearchPanel"]/div/input  java
	Click Element  //*[@id="Content_Content_Content_ctl00_ContentArea1Property_ctl00_ctl01_ctl00_SearchPanel"]/div/a
