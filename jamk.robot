*** Settings ***
Documentation  Avataan JAMKin sivut
Test Setup  Open Browser To JAMK
Resource  resources.robot


*** Test Cases ***
JAMK Opened
	When Open Browser To JAMK
	Then Say hello

*** Keywords ***
Say hello
	Log  Moro paskoille uuestaa
