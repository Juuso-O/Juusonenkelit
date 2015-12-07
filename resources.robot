*** Settings ***
Documentation	Yhteiset asetukset ja avainsanat
Library		Selenium2Library

*** Variables ***
${BROWSER}	Firefox
${DELAY}	0
${URL}		http://www.jamk.fi/fi/Etusivu/

*** Keywords ***
Open Browser To JAMK
	Open Browser  ${URL}  ${BROWSER}
	Maximize Browser Window
	Set Selenium Speed  ${DELAY}
	Title Should Be  Jyväskylän ammattikorkeakoulu - JAMK
