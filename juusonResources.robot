*** Settings ***
Documentation	Yhteiset asetukset ja avainsanat
Library		Selenium2Library

*** Variables ***
${BROWSER}	Firefox
${DELAY}	0
${URL}		http://www.jamk.fi/fi/Etusivu/
${FF_PROFILE}   ~/robot/JuusonBotti

*** Keywords ***
Open Browser To Jamk
	Open Browser  ${URL}  ${BROWSER}
	Maximize Browser Window
	Set Selenium Speed  ${DELAY}
	Title Should Be  Jyväskylän ammattikorkeakoulu - JAMK

