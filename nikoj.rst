P*ska formaatti
---------------

*** Settings ***
Documentation  RT4:n HENKILÖKOHTAINEN osa  
...  tekijänä Niko Jokipalo (@njokipal)  
Test Setup  Open Browser To JAMK  
Resource  resources.robot  

*** Test Cases ***
User tries to find info about branch  
  [Documentation]  Avataan jamk.fi ja koitetaan löytää  
  ...  tietoja opintohaarasta.  
  Search for branch "ohjelmistotekniikka"  
  Click First Result  
  Say hello  
  [Teardown]  Close All Browsers  

*** Keywords ***
Search for branch "${branch}"  
  Input Text  xpath=//*[@id="Content_MainMenu_SearchPanel"]/div/input[1]  ${branch}  
  Click Link  Hae  
  itle Should Be  Haku - JAMK  

Click First Result  
  Click Link  xpath=//*[@id="Content_Content_UpdatePanel1"]/div[1]/div/div[1]/div/h3/a  

Leave Comment  
  Click Link  Lisätiedot  
  Input Text  id=Content_Content_ctl00_ContentArea8Property_ctl00_ctl02_ctl00_ctl00_ctl00_ctl00_viesti  Miljoonabisnes!  
  Input Text  id=Content_Content_ctl00_ContentArea8Property_ctl00_ctl02_ctl00_ctl00_ctl00_ctl00_nimi  Terveisiä Narsulle  
  Input Text  id=Content_Content_ctl00_ContentArea8Property_ctl00_ctl02_ctl00_ctl00_ctl00_ctl00_email  cashMoney@moMoney.biz  
    
Say Hello  
  Log moro paskoille	  
