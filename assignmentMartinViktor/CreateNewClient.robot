*** Settings ***
Library               OperatingSystem
Library               Selenium2Library
Library               String
resource              Uppgifter.robot
resource              View.robot




*** Variables ***
${Create_element}=    Create New Client
${Edit_element}=      Edit Client
${idname}=            id=name
${idemail}=           id=email
${idgender}=          id=gender:0
${SecurityNumber}=    id=socialSecurityNumber
${Save}=              xpath=//a[text()='Save']
*** Keyword ***
Test_Create
                      Input text                  ${idname}                           ${Firstname}
                      Input text                  ${idemail}                          ${Firstemail}
                      Select checkbox             ${idgender}
                      input text                  ${SecurityNumber}                   ${Number}
                      Click Element               ${Save}
                      Wait Until Page Contains    ${SeccessCreated}

Test_Edit
                      Input text                  ${idname}                           ${Secondname}
                      Input text                  ${idemail}                          ${Secondemail}
                      Click Element               ${Save}
                      Wait Until Page Contains    ${SeccessEdit}
