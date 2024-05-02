*** Settings ***
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       http://10.1.40.31:8080/api/v1
${USER}           admin
${PASSW}          Admin@1234

*** Test Cases ***
Obter Token
    [Documentation]    Testa o retorno de um token do device
    Create Session    session    ${BASE_URL}    verify=False
    ${headers}        Create Dictionary    Content-Type=application/json
    ${data}           Create Dictionary    username=${USER}    password=${PASSW}
    ${response}       Post On Session    session    /session    headers=${headers}    json=${data}
    Should Be Equal As Strings    ${response.status_code}    200
    ${token}          Set Variable    ${response.json()['token']}
    Log               ${token}
    Should Not Be Empty    ${token}
