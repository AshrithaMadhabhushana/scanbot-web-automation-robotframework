*** Settings ***
Resource        ../Variables/super.robot

*** Keywords ***
Launch Browser
    [Arguments]    ${browser_name}    ${url}
    Run Keyword If    '${browser_name}'=='Chrome' or '${browser_name}'=='chrome' or '${browser_name}'=='gc'    Open Browser    ${url}    Chrome
    Run Keyword If    '${browser_name}'=='Firefox' or '${browser_name}'=='firefox' or '${browser_name}'=='ff'    Open Browser    ${url}    Firefox
    Run Keyword If    '${browser_name}'=='hlc'    Open Browser    ${url}    headlesschrome

Open Scanbot Website
    Launch Browser    Chrome    ${SCANBOT_URL}
    Maximize Browser Window