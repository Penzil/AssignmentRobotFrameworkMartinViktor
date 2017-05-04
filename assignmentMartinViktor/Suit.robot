*** Settings ***
Library                   OperatingSystem
Library                   Selenium2Library
Library                   String
resource                  Log_in.robot
resource                  Dashbord.robot
resource                  CreateNewClient.robot
resource                  ST.robot
resource                  enviroment_veriables.robot
Test setup                Setup
Test Teardown             Teardown

*** Test cases***
Test_create_new_client
                          Test_Log_in
                          Test_Dashboard_create
                          Test_Create
                          Test_SuccessView_create
                          Test_Check
Test_edit_client
                          Test_Log_in
                          Test_Dashboard_edit
                          Test_Edit
                          Test_SuccessView_edit
                          Test_Check
Test_delete_client
                          Test_Log_in
                          Test_Dashboard_delete
                          Test_Check
