===========
Asetukset
===========

Määritellään projektin asetukset eli oikeastaan Resource file ja ajetaan sieltä pari judduja joilla päädytään jamkin etusivulle.

.. code:: robotframework  

	*** Settings ***  
	Documentation  Avataan Jamkin sivut  
	.. Juuso Ohra-aho (@Juuso-O)  
	Test Setup  Open Browser To Jamk  
	Resource  juusonResources.robot  

=====
Test Cases
=====

Testikeissit jotka ajetaan tässä järjestyksessä.

.. code:: robotframework  

	*** Test Cases ***  
	Jamk Opened  
	Open JamkYhteystiedot  
	Search Matti  
	Say hello  
	[Teardown]  Close All Browsers  
  	
=====
Keywords
=====

Näitä ajellaan noissa teistikeisseissä yläpuolella.

.. code:: robotframework  

	*** Keywords ***  
	Open JamkYhteystiedot  
		Click Link  Henkilökunnan yhteystiedot  
	Search Matti  
		Input Text  xpath=//input[@id='Content_HeaderContent_SearchQuery']  Matti Mieskolainen  
		Click Link  Content_HeaderContent_SearchButton  
	Say Hello  
		Log	moro paskoille	

