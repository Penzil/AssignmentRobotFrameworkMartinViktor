
*** Variables ***
${SeccessCreated}=         Client was successfully created.
${SeccessEdit}=            Client was successfully updated.
${SeccessDelete}=          Client was successfully deleted.  
${AllClients}=             xpath=//a[text()='Show All Clients']
*** Keyword ***
Test_SuccessView_create

                           Click Element                           ${AllClients}
                           Wait Until Page Contains                ${List}
                           Page should contain                     ${Checkname1}

Test_SuccessView_edit
                           Click Element                           ${AllClients}
                           Wait Until Page Contains                ${List}
                           Page should contain                     ${Checkname2}
                            