*** settings ***
resource                  enviroment_veriables.robot
*** Keywords ***
Setup
                          Set Environment Variable      ${driver_name}    ${chromedriver_location}
                          Open Browser                  ${base_url}       ${chrome_browser}
                          Maximize Browser Window
                          Wait Until Page Contains      ${KeyLogin}
                          Set Selenium Speed            ${KeySpeed}
                          Set Selenium Timeout          ${KeyTimeout}
                          Delete all cookies
                          

Teardown
                          Close all Browsers