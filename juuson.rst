Juuson Robotti  
--------------
  
*** Settings ***  
Documentation  Avataan Jamkin sivut  

... Juuso Ohra-aho (@Juuso-O)  

Test Setup  Open Browser To Jamk  

Resource  juusonResources.robot  


*** Test Cases ***  
Jamk Opened  
	Open JamkYhteystiedot  
	
	... Jamkin yhteystietosivu  
	
	Search Matti  
	
	... Matin etsintä boksista  
	
	Say hello  
	
	... Lokitiedoston kirjaus  
	
	[Teardown]  Close All Browsers  
	
	... Selaimen sulkeminen  
  	
*** Keywords ***  
Open JamkYhteystiedot  
	Click Link  Henkilökunnan yhteystiedot  
  
Search Matti  
	Input Text  xpath=//input[@id='Content_HeaderContent_SearchQuery']  Matti Mieskolainen  
	Click Link  Content_HeaderContent_SearchButton  
  
Say Hello  
	Log	moro paskoille	

