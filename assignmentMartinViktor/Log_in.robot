*** Settings ***
Library              OperatingSystem
Library              Selenium2Library
Library              String
resource             Uppgifter.robot
resource             Dashbord.robot




*** Variables ***
${Login_element}=    Login
${id_username}=      id=formLogin:login
${id_password}=      id=formLogin:senha
${Login_button}=     name=formLogin:j_idt27     
*** Keyword ***
Test_Log_in
                     Input Text                  ${id_username}         ${username}
                     Input Text                  ${id_password}         ${password}
                     Click Element               ${Login_button}
                     Wait Until Page Contains    ${Dashboard_element}

                    