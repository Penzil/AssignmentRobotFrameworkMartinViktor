*** Settings ***
Library                   OperatingSystem
Library                   Selenium2Library
Library                   String

Test setup                Setup
Test Teardown             Teardown

*** Keywords ***
Setup
                          Set Environment Variable    webdriver.chrome.driver                                   /usr/local/bin/chromedriver
                          Open Browser                http://localhost:8080/hotel/faces/login/login.xhtml       browser=chrome
                          Maximize Browser Window
                          Wait Until Page Contains    Login
                          Set Selenium Speed          .2
                          Set Selenium Timeout        20

                          Delete all cookies
                          #insert an assertion

Teardown
                          Close all Browsers



*** Test cases***
Test_create_new_client
                          Input Text                  id=formLogin:login                                        marc
                          Input Text                  id=formLogin:senha                                        1010
                          Click Element               name=formLogin:j_idt27
                          Wait Until Page Contains    Dashboard
                          Click Element               xpath=//i[@class='fa fa-male fa-fw']
                          Wait Until Page Contains    List
                          Click Element               xpath=//a[@class='btn btn-primary']
                          Wait Until Page Contains    Create New Client


                          Input text                  id=name                                                   testsson
                          Input text                  id=email                                                  testsson@email.com
                          Select checkbox             id=gender:0
                          input text                  id=socialSecurityNumber                                   1234
                          Click Element               xpath=//a[text()='Save']
                          Wait Until Page Contains    Client was successfully created.
                          Click Element               xpath=//a[text()='Show All Clients']
                          Wait Until Page Contains    List
                          Page should contain         testsson

                          Click Element               xpath=//a[@class='dropdown-toggle']
                          Click Element               xpath=//i[@class='fa fa-sign-out fa-fw']
                          Wait Until Page Contains    Login

Test_edit_client
                          Input Text                  id=formLogin:login                                        marc
                          Input Text                  id=formLogin:senha                                        1010
                          Click Element               name=formLogin:j_idt27
                          Wait Until Page Contains    Dashboard
                          Click Element               xpath=//i[@class='fa fa-male fa-fw']
                          Wait Until Page Contains    testsson
                          Click Element               xpath=.//*[@id='j_idt49']/table/tbody/tr[7]/td[7]/a[2]
                          Wait Until Page Contains    Edit Client


                          Input text                  id=name                                                   testman
                          Input text                  id=email                                                  testman@email.com
                          Click Element               xpath=//a[text()='Save']
                          Wait Until Page Contains    Client was successfully updated.
                          Click Element               xpath=//a[text()='Show All Clients']
                          Wait Until Page Contains    List
                          Page should contain         testman

                          Click Element               xpath=//a[@class='dropdown-toggle']
                          Click Element               xpath=//i[@class='fa fa-sign-out fa-fw']
                          Wait Until Page Contains    Login

Test_delete_client
                          Input Text                  id=formLogin:login                                        marc
                          Input Text                  id=formLogin:senha                                        1010
                          Click Element               name=formLogin:j_idt27
                          Wait Until Page Contains    Dashboard
                          Click Element               xpath=//i[@class='fa fa-male fa-fw']
                          Wait Until Page Contains    testman
                          Click Element               xpath=.//*[@id='j_idt49']/table/tbody/tr[7]/td[7]/a[3]
                          Wait Until Page Contains    Client was successfully deleted.


                          Click Element               xpath=//a[@class='dropdown-toggle']
                          Click Element               xpath=//i[@class='fa fa-sign-out fa-fw']
                          Wait Until Page Contains    Login
