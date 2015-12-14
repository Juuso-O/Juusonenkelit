*** Settings ***  
Documentation  Avataan Jamkin sivut  
Test Setup  Open Browser To Jamk  
Resource  juusonResources.robot  


*** Test Cases ***  
Jamk Opened  
	Open JamkYhteystiedot  
	Search Matti  
	Say hello  
	[Teardown]  Close All Browsers  
  	
*** Keywords ***  
Open JamkYhteystiedot  
	Click Link  Henkilökunnan yhteystiedot  
  
Search Matti  
	Input Text  xpath=//input[@id='Content_HeaderContent_SearchQuery']  Matti Mieskolainen  
	Click Link  Content_HeaderContent_SearchButton  
  
Say Hello  
	Log	moro paskoille	

