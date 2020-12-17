*** Setting ***
Library  Selenium2Library
Suite Setup  Go to hotline
Suite Teardown  Close Browser

*** Variables ***
${HOTLINEPAGE}  https://www.hotline.ua/
${BROWSER}  chrome

*** Test Cases ***
Some searching on hotline.ua
    Search on hotline.ua  iPhone 7

*** Keywords ***
Search on hotline.ua
    [Arguments]  ${searchkey}
    Input Text  id=searchbox  ${searchkey}
    Click Button  id=doSearch
    Set Selenium Implicit Wait  10s
    Click Element  //ul[contains(@class,'products-list cell-list')]/li[2]/div[@class='item-info']/p[1]/a
    Click Element  //ul//span[contains(text(),'Где купить')]

Go to hotline
    Open Browser  ${HOTLINEPAGE}  ${BROWSER}