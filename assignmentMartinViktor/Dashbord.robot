
*** Variables ***
${Dashboard_element}=    Dashboard
${Client}=               xpath=//i[@class='fa fa-male fa-fw']
${NewClient}=            xpath=//a[@class='btn btn-primary']
${Checkname1}=           ${Firstname}
${Checkname2}=           ${Secondname}
${Logutman}=             xpath=//a[@class='dropdown-toggle']
${Logut}=                xpath=//i[@class='fa fa-sign-out fa-fw']
${edit}=                 xpath=.//*[@id='j_idt49']/table/tbody/tr[6]/td[7]/a[2]
${delete}=               xpath=.//*[@id='j_idt49']/table/tbody/tr[6]/td[7]/a[3]
*** Keyword ***
Test_Dashboard_create
                         Click Element                                             ${Client}
                         Wait Until Page Contains                                  ${List}
                         Click Element                                             ${NewClient}
                         Wait Until Page Contains                                  ${Create_element}

Test_Check
                         Click Element                                             ${Logutman}
                         Click Element                                             ${Logut}
                         Wait Until Page Contains                                  ${Login_element}
Test_Dashboard_edit
                         Click Element                                             ${Client}
                         Wait Until Page Contains                                  ${Firstname}
                         Click Element                                             ${edit}
                         Wait Until Page Contains                                  ${Edit_element}
Test_Dashboard_delete
                         Click Element                                             ${Client}
                         Wait Until Page Contains                                  ${Secondname}
                         Click Element                                             ${delete}
                         Wait Until Page Contains                                  ${SeccessDelete}
